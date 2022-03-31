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

class ProductController extends Controller
{

    public function search()
    {
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

    public function offers()
    {
        $products = Product::where('is_active', 1)
            ->where('product_type', 'offer')
            ->orderBy('slug')
            ->paginate(12);

        return ProductResource::collection($products);
    }

    public function details($id)
    {
        // dd($id);
        $product = Product::where('is_active', 1)
            ->where('xitem', $id)->first();
        return new ProductResource($product);
    }

    public function productUpdate(Request $request, $id)
    {
        // $validator = Validator::make($request->all(), [
        //     'trans.name'    => 'required',
        // ], [
        //     'trans.name.unique' => _lang('Name should be unique !'),
        // ]);

        // $products = Product::all();
        $productlist = $request->productList;
        
        foreach($productlist as $products)
        {
            if (count($products->xitem) > 0) {
                $update_product = DB::table('products')
                ->where('xitem', $id)
                ->updateOrInsert([
                    'slug' => $products['slug'],
                    'stock' => $products['stock'],
                    'xitem' => $products['xitem'],
                ]);
            }
        }
        return response()->json($update_product);

        
      
       
    }

    public function allProduct()
    {
        $products = Product::all();
        return response()->json($products);
        // return ProductResource::collection($products);
    }


    public function store(Request $request)
    {

         $validator = Validator::make($request->all(), [
            'trans.name'    => 'required',
        ], [
            'trans.name.unique' => _lang('Name should be unique !'),
        ]);

        $productlist = $request->productList;

        foreach ($productlist as $products) {
        //     // if (count($products['xitem']) > 0) {
                $update_product = DB::table('products')
                ->where('xitem', $products['xitem'])
                    ->updateOrInsert([
                        'slug' => $products['slug'],
                        'stock' => $products['stock'],
                        'xitem' => $products['xitem'],
                    ]);
            // }
        }
        // return response()->json($update_product);


        // $productlist = $request->productList;

        // foreach($productlist as $products)
        // {
        //     // $pro_name = $products['slug'];
        //     $product = new Product();
        //     $product->slug   = $products['slug'];
        //     $product->stock  = $products['stock'];
        //     $product->xitem  = $products['xitem'];
        //     $product->save();
        // }
        // return response()->json($product);


        // $id = $product->id;
        // DB::table('temp_products')
        //     ->where('id', '=', $id)
        //     ->update(['itemcode' => DB::raw("CONCAT('IC--', LPAD($id, 6, 0))")]);

        return response()->json($update_product);
        // return new ProductResource($update_product);
    }
}
