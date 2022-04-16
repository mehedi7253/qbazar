@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">
				<span class="panel-title">{{ _lang('Update Order Details') }}  <a href="{{ route('orders.invoice', $id) }}" class="btn btn-info float-right"><i class="icofont-file-document"></i> Invoice</a></span>
			</div>
			<div class="card-body">
                  <div class="table-responsive">
                                    <table class="table table-bordered text-center" style="width:100%">
                                        <thead>
                                            <tr>
                                              <th>#</th> 
                                              <th >Description</th>
                                              <th>Unit</th>
                                              <th>Quantity</th>
                                              <th>Rate</th>
                                              <th>Amount</th> 
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($products as $i=>$product)
                                                <tr>
                                                    <td>{{ ++$i }}</td>
                                                    <td>{{ $product->name }}</td>
                                                    <td>{{ $product->unit_number }} {{ $product->short_name }}</td>
                                                    <td style="width: 22%">
                                                        <form action="{{ route('orders.invoice.update', $product->OrderProductID) }}" method="post">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group input-group">
                                                                <input type="number" min="1" id="qty" name="qty" class="form-control" value="{{ $product->qty }}">
                                                                <button type="submit" name="update" class="btn btn-danger"><i class="icofont-arrow-up"></i></button>
                                                            </div>
                                                        </form>
                                                    </td>
                                                    <td>
                                                        {!! xss_clean(decimalPlace($product->unit_price, currency($order->currency))) !!}
                                                    </td>
                                                    <td>
                                                        {!! xss_clean(decimalPlace($product->line_total, currency($order->currency))) !!}    
                                                    
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                        <tfoot class="text-right">
                                            <tr>
                                                <td style="border: none"></td>
                                                <td style="border: none; text-align: left">
                                                    @if($order->note != '')
                                                    <p class="extra-notes">
                                                        <strong>{{ _lang('Extra Notes') }}</strong>
                                                        {{ $order->note }}
                                                    </p>
                                                @endif
                                                </td>
                                                <td style="border: none"></td>
                                                <td style="border: none"></td>
                                                <td style="border: none">
                                                      {{ _lang('Sub Total') }} <br/>
                                                    + {{ _lang('Shipping') }} <br/>
                                                    - {{ _lang('Discount') }} <br/>
                                                      {{ _lang('Total') }}  <br/>
                                                </td>
                                                <td style="border: none">
                                                    <span>{!! xss_clean(decimalPlace($order->sub_total, currency($order->currency))) !!}</span> <br/>
                                                    <span>{!! xss_clean(decimalPlace($order->shipping_cost, currency($order->currency))) !!}</span> <br/>
                                                    <span> {!! xss_clean(decimalPlace($order->discount, currency($order->currency))) !!}</span> <br/>
                                                    <span>{!! xss_clean(decimalPlace($order->total, currency($order->currency))) !!}</span>
                                                </td>
                                            </tr>
                                            <tr>
                                               <td style="border: none"></td>
                                               <td style="border: none"></td>
                                               <td style="border: none"></td>
                                               <td style="border: none">Add Discount</td>
                                               <td style="border: none">
                                                    <form action="{{ route('orders.invoice.discount', $order->id) }}" method="post">
                                                        @csrf
                                                        @method('PUT')
                                                        <div class="form-group input-group">
                                                            <input type="number" min="0" id="discount" class="col-8" name="discount" value="{{ $order->discount }}">
                                                            <button type="submit" name="update" class="btn btn-danger"><i class="icofont-arrow-up"></i></button>
                                                        </div>
                                                    </form>
                                                </td>
                                               <td style="border: none"></td>
                                                
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
			</div>
		</div>
	</div>
</div>
@endsection