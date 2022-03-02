<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use App\Models\TempProduct;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Validator;

class ProductController extends Controller {

    public function search() {
        $keyword = request('keyword');
        if ($keyword == '') {
            return ProductResource::collection([]);
        }

        $products = Product::where('is_active', 1)
            ->whereHas('translation', function (Builder $query) use ($keyword) {
                $query->where('name', 'like', '%' . $keyword . '%');
            })
            ->orderBy('slug')
            ->limit(15)
            ->get();

        return ProductResource::collection($products);
    }

    public function offers() {
        $products = Product::where('is_active', 1)
            ->where('product_type', 'offer')
            ->orderBy('slug')
            ->paginate(12);

        return ProductResource::collection($products);
    }

    public function details($id) {
        // dd($id);
        $product = Product::where('is_active', 1)
            ->where('id',$id)->first();
        return new ProductResource($product);
    }
    public function allProduct(){
        $product = Product::all();
        return ProductResource::collection($product);
    }


    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'trans.name'    => 'required',
        ], [
            'trans.name.unique' => _lang('Name should be unique !'),
        ]);

        $product           = new Product();
        $product->slug     = $request->input('slug');
        $product->stock    = $request->input('stock');
      
        $product->save();
        $id = $product->id;
        DB::table('products')
            ->where('id', '=', $id)
            ->update(['xitem' => DB::raw("CONCAT('IC--', LPAD($id, 6, 0))")]);

        // return response()->json($product);



        // $product                   = new TempProduct();
        // $product->product_name     = $request->input('product_name');
        // $product->stock_quantity   = $request->input('stock_quantity');
      
        // $product->save();
        // $id = $product->id;
        // DB::table('temp_products')
        //     ->where('id', '=', $id)
        //     ->update(['itemcode' => DB::raw("CONCAT('IC--', LPAD($id, 6, 0))")]);

        // return response()->json($product);


        return new ProductResource($product);
    }

}
