<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Models\jsnitem;
use App\Models\Product;
use App\Models\TempProduct;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Calculation\TextData\Concatenate;
use PHPUnit\Framework\Constraint\IsTrue;
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

        /*  foreach ($productlist as $products) {
            if (count($products->xitem) > 0) {
                $update_product = DB::table('products')
                    ->where('xitem', $id)
                    ->updateOrInsert([
                        'slug' => $products['slug'],
                        'stock' => $products['stock'],
                        'xitem' => $products['xitem'],
                    ]);
            }
        }*/
        return response()->json($productlist);
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



        $zid = 100090;
        $user = 'test';
        $password = '123';

        $loginDto = $request->loginDto;

        foreach ($loginDto as $logindetails) {
            $username = $logindetails['username'];
            $pass = $logindetails['pass'];
        }

        $productlist = $request->productList;


        $productlist = $request->productList;
        $item_list1 = "";
        foreach ($productlist as $products) {
            $item = $products['xitem'];
            // print_r($item_list1);
            if ($item_list1 == "")
                $item_list1 = $item_list1  . "'" . $item . "'";
            else
                $item_list1 = $item_list1 . "," . "'" . $item . "'";
        }
        DB::select(DB::raw("UPDATE products SET stock = 0 WHERE xitem NOT IN ($item_list1)"));

        foreach ($productlist as $productlist2) {
            $products2 = DB::table('products')->where('xitem', $productlist2['xitem'])->get();
            if (count($products2) > 0) {
                DB::table('products')
                    ->where('xitem', '=', $productlist2['xitem'])
                    ->update([
                        'stock' => $productlist2['stock'],
                        'slug'  => $productlist2['slug'],
                    ]);
            } else {
                $product = new Product();
                $product->slug   = $productlist2['slug'];
                $product->stock  = $productlist2['stock'];
                $product->xitem  = $productlist2['xitem'];
                $product->save();
            }
        }
        return response()->json(true);





        // if ($username == $user && $pass == $password) {

           
        // } else {
        //     $errmsg = "user name or password not match";
        //     return response()->json($errmsg);
        // }
    }
}
