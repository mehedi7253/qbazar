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
                    <thead>
                        <tr>
                            <th>{{ _lang('Thumbnail') }}</th>
                            <th>{{ _lang('Item Code') }}</th>
                            <th style="width: 20%">{{ _lang('Name') }}</th>
                            <th>{{ _lang('Category') }}</th>
                            <th>{{ _lang('Unit') }}</th>
                            <th>{{ _lang('Price') }}</th>
                            <th>{{ _lang('Stock') }}</th>
                            <th class="text-center">{{ _lang('Action') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($products as $i=>$product)
                            <tr>
                                <td class=" text-center">
                                    <img src="{{ asset('uploads/media/'.$product->thumbnail ) }}" style="height: 50px; width: 50px">
                                </td>
                                <td>{{ $product->xitem }}</td>
                                <td>
                                    @if ($product->category_id == null)
                                        {{ $product->slug }}</td>
                                        @else
                                         {{ $product->translation->name }}
                                    @endif
                                </td>
                                <td style="width: 10%">{{ $product->category->translation->name }}</td>
                                <td>{{ $product->unit_number }} {{ $product->unit->translation->short_name }} </td>
                                <td>{{ $product->price }}</td>
                                <td>
                                    {{ $product->stock }} <br/>
                                    @if ($product->stockProducts->stock_quantity == null)

                                    @else
                                    @if ($product->stock <= $product->stockProducts->stock_quantity)
                                        <span class="badge badge-danger">Stock Out</span>
                                    @else
                                        <span class="badge badge-success">Available</span>
                                    @endif
                                @endif
                                </td>
                                <td>
                                    <form action="{{ route('products.destroy', $product->id ) }}" method="POST">
                                        <a href="{{ route('products.edit',$product->id) }}" class="btn btn-primary btn-sm"><i class="icofont-edit-alt"></i></a>
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger btn-sm" type="submit" onclick="return confirm('Are you sure to delete !!');"><i class="icofont-trash"></i></button>
                                    </form>
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
