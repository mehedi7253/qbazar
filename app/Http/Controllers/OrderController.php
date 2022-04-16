<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderProduct;
use App\Models\Transaction;
use DataTables;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Validator;
use GuzzleHttp\Client;
use GuzzleHttp\Psr7;
use GuzzleHttp\Exception\ClientException;


class OrderController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        date_default_timezone_set(get_option('timezone', 'Asia/Dhaka'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $orders = Order::select('orders.*')
            ->orderBy("orders.id", "DESC")->get();
        return view('backend.order.list', compact('orders'));
    }

    public function get_table_data()
    {
        $orders = Order::select('orders.*')
            ->orderBy("orders.id", "desc");

        return Datatables::eloquent($orders)
            ->editColumn('payment_status', function ($order) {
                return $order->getPaymentStatus();
            })
            ->editColumn('delivery_status', function ($order) {
                return $order->getDeliveryStatus();
            })
            ->editColumn('total', function ($order) {
                return decimalPlace($order->total, $order->currency);
            })
            ->addColumn('action', function ($order) {
                if ($order->delivery_status != 'completed') {
                    return '<div class="text-center">
							<div class="dropdown">'
                        . '<button class="btn btn-light btn-xs dropdown-toggle" type="button" data-toggle="dropdown">' . _lang('Action')
                        . '</button>'
                        . '<div class="dropdown-menu dropdown-menu-right">'
                        . '<a class="dropdown-item" href="' . action('OrderController@show', $order->id) . '"><i class="icofont-eye-alt"></i> ' . _lang('Order Details') . '</a>'
                        . '<a class="dropdown-item ajax-modal" href="' . action('OrderController@assign_delivery_boy', $order->id) . '" data-title="' . _lang('Assign Delivery Boy') . '"><i class="icofont-delivery-time"></i> ' . _lang('Assign Delivery Boy') . '</a>'
                        . '<form action="' . action('OrderController@destroy', $order['id']) . '" method="post">'
                        . csrf_field()
                        . '<input name="_method" type="hidden" value="DELETE">'
                        . '<button class="button-link btn-remove" type="submit"><i class="icofont-ui-delete"></i> ' . _lang('Delete') . '</button>'
                        . '</form>'
                        . '</div>'
                        . '</div>'
                        . '</div>';
                }
                return '<div class="text-center">
							<div class="dropdown">'
                    . '<button class="btn btn-light btn-xs dropdown-toggle" type="button" data-toggle="dropdown">' . _lang('Action')
                    . '</button>'
                    . '<div class="dropdown-menu dropdown-menu-right">'
                    . '<a class="dropdown-item" href="' . action('OrderController@show', $order->id) . '"><i class="icofont-eye-alt"></i> ' . _lang('Order Details') . '</a>'
                    . '<form action="' . action('OrderController@destroy', $order['id']) . '" method="post">'
                    . csrf_field()
                    . '<input name="_method" type="hidden" value="DELETE">'
                    . '<button class="button-link btn-remove" type="submit"><i class="icofont-ui-delete"></i> ' . _lang('Delete') . '</button>'
                    . '</form>'
                    . '</div>'
                    . '</div>'
                    . '</div>';
            })
            ->setRowId(function ($order) {
                return "row_" . $order->id;
            })
            ->rawColumns(['action', 'payment_status', 'delivery_status', 'total'])
            ->make(true);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        $order = Order::find($id);
        if (!$request->ajax()) {
            return view('backend.order.view', compact('order', 'id'));
        } else {
            return view('backend.order.modal.view', compact('order', 'id'));
        }
    }

    public function invoice($id)
    {
        $order = Order::find($id);
        $products = DB::table('order_products')
            ->join('products', 'products.id', '=', 'order_products.product_id')
            ->join('unit_translations', 'unit_translations.id', 'products.unit_id')
            ->join('product_translations', 'product_translations.product_id', 'products.id')
            ->where('order_products.order_id', '=', $id)
            ->get();
        // return $products;

        return view('backend.order.invoice', compact('products', 'order', 'id'));
    }
    /**
     * Assign delivery boy
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function assign_delivery_boy(Request $request, $id)
    {
        if ($request->isMethod('get')) {
            $order = Order::find($id);

            if (!$request->ajax()) {
                return back();
            } else {
                return view('backend.order.modal.assign_delivery_boy', compact('order', 'id'));
            }
        } else {

            $validator = Validator::make($request->all(), [
                'delivery_boy_id' => 'required',
            ], [
                'delivery_boy_id.required_if' => _lang('Delivery boy is required !'),
            ]);

            if ($validator->fails()) {
                if ($request->ajax()) {
                    return response()->json(['result' => 'error', 'message' => $validator->errors()->all()]);
                } else {
                    return back()->withErrors($validator)
                        ->withInput();
                }
            }

            $order                    = Order::find($id);
            $previous_delivery_boy_id = $order->delivery_boy_id;
            $order->delivery_boy_id   = $request->delivery_boy_id;
            $order->delivery_status   = $request->delivery_status;
            $order->save();

            if ($previous_delivery_boy_id != $order->delivery_boy_id) {
                return response()->json(['result' => 'success', 'action' => 'update', 'message' => _lang('Order Updated Successfully'), 'data' => $order, 'table' => '#orders_table']);
            }

            return response()->json(['result' => 'success', 'action' => 'not_update', 'message' => _lang('Order Updated Successfully'), 'data' => $order, 'table' => '#orders_table']);
        }
    }

    public function trigger_assign_delivery_boy($orderId)
    {
        $order = Order::find($orderId);
        if ($order->delivery_boy_id != null) {
            //Trigger Order Update Event
            event(new \App\Events\AssignDeliveryBoy($order));
            event(new \App\Events\OrderUpdated($order));
        }
    }

    /**
     * Update Order
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $validator = Validator::make($request->all(), [
            'delivery_status' => 'required',
            // 'payment_status'  => 'required',
            //'transaction_id'  => 'required_if:payment_status,paid',
            'payment_method'  => 'required_if:payment_status,paid',
        ], [
            'transaction_id.required_if' => _lang('Transaction ID is required !'),
            'payment_method.required_if' => _lang('Payment Method is required !'),
        ]);

        if ($validator->fails()) {
            if ($request->ajax()) {
                return response()->json(['result' => 'error', 'message' => $validator->errors()->all()]);
            } else {
                return back()->withErrors($validator)
                    ->withInput();
            }
        }

        DB::beginTransaction();

        $order                    = Order::find($id);
        $previous_payment_status  = $order->payment_status;
        $previous_delivery_status = $order->delivery_status;
        $order->delivery_status = $request->delivery_status;
        if ($request->delivery_status == 'completed') {
            $currenct_date = date('Y-m-d H:i:s');
            $order->payment_status  = 'paid';
            $order->delivery_time = $currenct_date;

            $zid = 200000;
            $username = 'ecom';
            $pass = 'ecom123';

            $loginDto = ['zid' => $zid, 'username' => $username, 'password' => $pass];

            if ($username == 'ecom' && $pass == 'ecom1023') {
                $headline = DB::select(DB::raw("SELECT  DATE(created_at)  as xdate, id as xordernum, sub_total as xtotamt, shipping_cost as xshipamt, discount as xdiscamt, customer_phone as xnote FROM orders WHERE id = $id"));

                foreach ($headline as $header) {
                    $xdate     = $header->xdate;
                    $xordernum = $header->xordernum;
                    $xtotamt   = $header->xtotamt;
                    $xshipamt  = $header->xshipamt;
                    $xdiscamt  = $header->xdiscamt;
                    $xnote     = $header->xnote;
                }

                $hd = ['xdate' => $xdate, 'xordernum' => $xordernum, 'xtotamt' => $xtotamt, 'xshipamt' => $xshipamt, 'xdiscamt' => $xdiscamt, 'xnote' => $xnote];

                $orders = DB::select(DB::raw("SELECT products.xitem, order_products.qty as xqtyord, order_products.unit_price as xrate, order_products.unit_price * order_products.qty as xlineamt FROM order_products, orders, products WHERE products.id = order_products.product_id AND orders.id = order_products.order_id AND order_products.order_id = $id"));
                $data = array_merge(["loginDto" => $loginDto],["header" => $hd], ['detailsList' => $orders]);

                // $client = new Client();
                $response = Http::post("http://103.120.223.29:8080/aju-erp/api/product/sellcreate", $data);

                // return $response;
        
                if($response == true){

                    $productdto = $response['productDto'];
                    $item_list1 = "";

                    foreach ($productdto as $pdetails) {
                        $item = $pdetails['xitem'];
                        // print_r($item_list1);
                        if ($item_list1 == "")
                            $item_list1 = $item_list1  . "'" . $item . "'";
                        else
                            $item_list1 = $item_list1 . "," . "'" . $item . "'";
                    }

                    foreach ($productdto as $productlist2) {
                        $products2 = DB::table('products')->where('xitem', $productlist2['xitem'])->get();

                        if (count($products2) > 0) {
                            DB::table('products')
                            ->where('xitem', '=', $productlist2['xitem'])
                            ->update([
                                'stock' => $productlist2['stock']
                            ]);
                        }
                    }
                    
                } else {
                    return 'error';
                }
            } else {
                $error = "User Name Or password Incorrect..!!";
                return $error;
            }
        } elseif ($request->delivery_status == 'processing' || $request->delivery_status == 'pending') {
            $order->payment_status  = 'pending';
        }
        //   $order->payment_status  = $request->payment_status;
        $order->payment_method  = $request->payment_method;
        $order->save();

        //Update Transaction
        // if ($request->payment_status == 'paid' && $previous_payment_status != 'paid') {
        //     $transaction                 = new Transaction();
        //     $transaction->order_id       = $order->id;
        //     $transaction->transaction_id = $request->transaction_id;
        //     $transaction->payment_method = $request->payment_method;
        //     $transaction->amount         = $order->total;
        //     $transaction->save();
        // }

        if ($order->delivery_status != $previous_delivery_status) {
            //Trigger Order Status Changed Event
            event(new \App\Events\OrderUpdated($order));
        }

        DB::commit();

        return back()->with('success', _lang('Order Updated Sucessfully'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $order = Order::find($id);
        $order->delete();
        return redirect()->route('orders.index')->with('success', _lang('Deleted Successfully'));
    }

    public function findInvoice($id){
        $order = Order::find($id);
        $products = DB::table('order_products')
            ->join('products', 'products.id', '=', 'order_products.product_id')
            ->join('unit_translations', 'unit_translations.id', 'products.unit_id')
            ->join('product_translations', 'product_translations.product_id', 'products.id')
            ->select('order_products.id as OrderProductID','qty', 'product_translations.name','unit_number', 'unit_price','line_total','unit_translations.short_name')
            ->where('order_products.order_id', '=', $id)
            ->get();

            // return $products;
        return view('backend.order.update-invoice', compact('order','id','products'));
    }

    public function updateInvoice(Request $request, $id)
    {
        $order_item = OrderProduct::find($id);
        $order_item->qty = $request->qty;
        $order_item->save();

        if($order_item == true)
        {
            $line_total = $order_item->qty * $order_item->unit_price;
            DB::select(DB::raw("UPDATE order_products SET line_total = $line_total WHERE id = $id"));
            $subtotal = DB::select(DB::raw("SELECT SUM(line_total) as SubTotal FROM order_products WHERE order_id = $order_item->order_id"));

            $order_tbl = DB::table('orders')->where('id',$order_item->order_id)->get();
            
            foreach($order_tbl as $orders)
            {
                if ($orders->shipping_cost == 0) {
                    foreach($subtotal as $subTotal){
                        DB::select(DB::raw("UPDATE orders SET sub_total = $subTotal->SubTotal, total = $subTotal->SubTotal  WHERE id = $order_item->order_id"));
                    }
                }elseif($orders->discount !== 0){
                    foreach ($subtotal as $subTotal) {
                        $shiping = $orders->shipping_cost + $subTotal->SubTotal - $orders->discount;
                        DB::select(DB::raw("UPDATE orders SET sub_total = $subTotal->SubTotal, total = $shiping  WHERE id = $order_item->order_id"));
                    }
                }else{
                    foreach ($subtotal as $subTotal) {
                        $shiping = $orders->shipping_cost + $subTotal->SubTotal;
                        DB::select(DB::raw("UPDATE orders SET sub_total = $subTotal->SubTotal, total = $shiping  WHERE id = $order_item->order_id"));
                    }
                }
            }
            
        }
        return back()->with('success','Update Successful');

    }

    public function discountAmount(Request $request, $id)
    {
        $order = Order::find($id);
        $order->discount = $request->discount;
        $order->save();

        if($order == true)
        {
            if($order->shippinig_cost !== 0 ){
                $discountValue = $order->shippinig_cost + $order->total - $order->discount;
                DB::select(DB::raw("UPDATE orders SET total = $discountValue  WHERE id = $id"));
            }else{
                $discountValue = $order->total - $order->discount;
                DB::select(DB::raw("UPDATE orders SET total = $discountValue  WHERE id = $id"));
            }
           

        }
        return back()->with('success', 'Discount Added Successful');
    }
}
