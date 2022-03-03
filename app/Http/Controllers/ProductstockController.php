<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\product_stock;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ProductstockController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::orderBy('id','DESC')->get();
        return view('backend.productstock.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'stock_quantity'  => 'required'
        ]);
        $stock = new product_stock();
        $stock->stock_quantity = $request->stock_quantity;
        $stock->product_id     = $request->product_id;

        $stock->save();
        return back()->with('success','Successfully Added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::find($id);

        $product_stocks = DB::table('product_stocks')
                ->where('product_id','=',$id)
                ->get();

        if(count($product_stocks) > 0){
            foreach($product_stocks as $stocks){
                $prodcutstock = $stocks->stock_quantity;
                $product_id   = $stocks->product_id;
            }
            return view('backend.productstock.edit', compact('prodcutstock','product_id'));
        }else{
            return view('backend.productstock.create',compact('product'));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $update = DB::table('product_stocks')
        ->where('product_id','=',$id)
        ->update(['stock_quantity'=> $request->stock_quantity]);

    return back()->with('success','Successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
