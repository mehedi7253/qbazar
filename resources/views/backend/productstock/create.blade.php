@extends('layouts.app')

@section('content')

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header d-flex align-items-center">
                <span class="panel-title">{{ _lang('Manage Product List') }}</span>
            </div>
            <div class="card-body">
               <form action="{{ route('product-stock.store') }}" method="POST">
                @csrf
                   <div class="form-group col-md-6 float-left">
                       <label>Stock Number<sup class="text-danger">*</sup></label>
                       <input name="product_id" value="{{ $product->id }}" hidden>
                       <input type="number" name="stock_quantity" placeholder="Enter Stock Number" class="form-control">
                   </div>
                   <div class="form-group col-md-6 float-left">
                    <label></label>
                    <button type="submit" class="btn btn-block btn-primary mt-2"><i class="icofont-check-circled"></i> Save Changes</button>
                </div>
               </form>
            </div>
        </div>
    </div>
</div>

@endsection

