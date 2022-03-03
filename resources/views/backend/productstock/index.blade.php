@extends('layouts.app')

@section('content')

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header d-flex align-items-center">
                <span class="panel-title">{{ _lang('Manage Product List') }}</span>
            </div>
            <div class="card-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead class="text-center">
                        <tr>
                            <th>#</th>
                            <th>Product Code</th>
                            <th>Name</th>
                            <th>Status</th>
                            <th>Stock</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($products as $i=>$product)
                            <tr>
                                <td>{{ ++$i }}</td>
                                <td class=" text-center">{{ $product->xitem }}</td>
                                <td style="width: 30%">{{ $product->translation->name }}</td>
                                <td class=" text-center">
                                    @if ($product->stockProducts->stock_quantity == null)

                                        @else
                                        @if ($product->stock <= $product->stockProducts->stock_quantity)
                                            <span class="badge badge-danger">Stock Out</span>
                                        @else
                                            <span class="badge badge-success">Available</span>
                                        @endif
                                    @endif
                                   
                                </td>
                                <td class=" text-center">{{ $product->stock }}</td>
                                <td class=" text-center">
                                    <a href="{{ route('product-stock.edit',$product->id) }}" class="btn btn-primary btn-sm"><i class="icofont-edit-alt"></i></a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection
@section('js-script')
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script>
@endsection
