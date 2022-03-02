<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\ProductResource;
use Illuminate\Database\Eloquent\Builder;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller {
    
    public function index() {
        $catregories = Category::with(['translation', 'child_categories'])
            ->where('is_active', 1)
            ->get();
        return CategoryResource::collection($catregories);
    }

    public function banner($id){
        $categories = Category::where('id', $id)->first();
        return new CategoryResource($categories);
    }

    public function show($slug) {
        $category = Category::where('slug', $slug)->first();

        return new CategoryResource($category);
    }


    public function products($slug) {

        $products = Product::where('is_active', 1)
            ->where('product_type','general')
            ->whereHas('category', function (Builder $query) use ($slug) {
                $query->where('slug',$slug);
            })
            ->orderBy('slug')
            ->paginate(15);

        return ProductResource::collection($products);
    }


    public function storeProduct(Request $request)
    {
        $product                = new Product();
        $product->category_id   = $request->category_id;
        $product->unit_id       = $request->unit_id;
        $product->unit_number   = $request->unit_number;
        $product->slug          = $request->slug;
        $product->price         = $request->price;
        $product->special_price = $request->special_price;
        $product->xitem = $request->xitem;
        $product->in_stock      = 1;
        $product->is_active     = 1;

        $product->save();
    }
}
