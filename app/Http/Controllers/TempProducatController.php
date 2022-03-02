<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\TempProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Image;
use Validator;

class TempProducatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all()->where('category_id', null);
        return view('backend.temp_product.index', compact('products'));
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
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
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
        return view('backend.temp_product.edit', compact('product'));
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
        // $validator = Validator::make($request->all(), [
        //     'trans.name'    => 'required',
        //     'category_id'   => 'required',
        //     'unit_id'       => 'required',
        //     'unit_number'   => 'required|numeric',
        //     'price'         => 'required|numeric',
        //     'special_price' => 'nullable|numeric',
        //     'in_stock'      => 'required',
        //     'thumbnail'     => 'nullable|image',
        // ], [
        //     'trans.name.unique' => _lang('Name should be unique !'),
        // ]);

        // if ($validator->fails()) {
        //     if ($request->ajax()) {
        //         return response()->json(['result' => 'error', 'message' => $validator->errors()->all()]);
        //     } else {
        //         return redirect()->route('products.create')
        //             ->withErrors($validator)
        //             ->withInput();
        //     }
        // }

        // $thumbnail = "default.png";
        // if ($request->hasfile('thumbnail')) {
        //     $file      = $request->file('thumbnail');
        //     $thumbnail = time() . uniqid() . '.' . $file->getClientOriginalExtension();

        //     try {
        //         $img = Image::make($file->path());
        //         $img->resize(400, 400, function ($constraint) {
        //             $constraint->aspectRatio();
        //         })->save(public_path() . "/uploads/media/" . $thumbnail);
        //     } catch (\Exception $e) {
        //         $file->move(public_path() . "/uploads/media/", $thumbnail);
        //     }

        // }

        // $product                = new Product();
        // $product->category_id   = $request->input('category_id');
        // $product->unit_id       = $request->input('unit_id');
        // $product->unit_number   = $request->input('unit_number');
        // $product->slug          = $request->trans['name'];
        // $product->op_name       = $request->input('op_name');
        // $product->price         = $request->input('price');
        // $product->special_price = $request->input('special_price');
        // $product->in_stock      = $request->input('in_stock');
        // $product->is_active     = $request->input('is_active');
        // $product->thumbnail     = $thumbnail;

        // $product->save();
        // DB::table('temp_products')->delete($id);

        // if (!$request->ajax()) {
        //     return redirect()->route('temp-product.index')->with('success', _lang('Saved Successfully'));
        // } else {
        //     return response()->json(['result' => 'success', 'action' => 'store', 'message' => _lang('Saved Successfully'), 'data' => $product, 'table' => '#products_table']);
        // }


        // $product = new Product();
        // $product->category_id = $request->category_id;
        // $product->slug        = $request->slug;
        // $product->xitem       = $request->xitem;
        // $product->stock       = $request->stock;

        // $product->save();
      

        // // return back()->with('success','Product Added Successful');
        // return redirect()->route('temp-product.index')->with('success','Added Successfull');
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
