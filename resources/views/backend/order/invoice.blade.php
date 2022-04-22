@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-10 mx-auto">
		<div class="card">
			<div class="card-header">
				<span class="panel-title">{{ _lang('Order Invoice') }} <a href="{{ route('orders.show', $id) }}" class="btn btn-info float-right"><i class="icofont-bubble-left"></i> Back</a></span>
			</div>

			<div class="card-body" id="mainFrame">

				<div class="receipt-content">
					<div class="row">
						<div class="col-md-12">
							<div class="invoice-wrapper">
                                <div class="text-center" style="margin-top: -2%">
                                    <img src="{{ asset('logo/logo.jpg') }}" style=" width: 100px">
                                </div>
								@if($order->payment_status == $order::PAID)
								<div class="payment-info">
									<div class="row">
										<div class="col-sm-6">
											<span>{{ _lang('Order ID') }}: <b>{{ $order->id }}</b></span><br>
											<span>{{ _lang('Order Date') }}: <b>{{ date('d-m-Y h:i A', strtotime($order->created_at)) }}</b></span><br>
											<span>{{ _lang('Delivery Type') }}: <b>{{ strtoupper($order->delivery_type) }}</b></span><br>
										</div>
										<div class="col-sm-6 text-right">
											<span>{{ _lang('Payment Method') }}</span>
											<strong>{{ strtoupper(str_replace('_',' ',$order->payment_method)) }}</strong>

											<!-- <span><u>{{ _lang('Transaction ID') }}</u></span>
											<strong>{{ $order->transaction->transaction_id }}</strong>

											<span>{{ _lang('Payment Date') }}</span>
											<strong>{{ $order->transaction->created_at }}</strong> -->
										</div>
									</div>
								</div>
								@else
								<div class="payment-info">
									<div class="row">
										<div class="col-sm-6">
											<span>{{ _lang('Order ID') }}: <b>{{ $order->id }}</b></span><br>
											<span>{{ _lang('Order Date') }}: <b>{{ date('d-m-Y h:i A', strtotime($order->created_at)) }}</b></span><br>
											<span>{{ _lang('Delivery Type') }}: <b>{{ strtoupper($order->delivery_type) }}</b></span><br>
										</div>
										<div class="col-sm-6 text-right">
											<span>{{ _lang('Payment Method') }}</span>
											<strong>{{ strtoupper(str_replace('_',' ',$order->payment_method)) }}</strong>

										</div>
									</div>
								</div>
								@endif

								<div class="payment-details">
									<div class="row">
										<div class="col-sm-4">
											<span>{{ _lang('Billing Details') }}</span>
											<strong>
												{{ $order->customer_name }}
											</strong>
											<p>
												{{ $order->customer_email }}<br>
												{{ $order->customer_phone }}<br>
											</p>
										</div>

										<div class="col-sm-4">
											<span>{{ _lang('Shipping Address') }}</span>
											<p>
												{{ $order->shipping_address }}<br>
											</p>
										</div>

										<div class="col-sm-4 text-right">
											<span>{{ _lang('Payment To') }}</span>
											<strong>
												{{ get_option('company_name') }}
											</strong>
											<p>
												{{ get_option('email') }}<br>
												{{ get_option('phone') }}<br>
												{!! xss_clean(get_option('address')) !!} <br>
											</p>
										</div>
									</div>
								</div>

                                <label class="font-weight-bold" style="margin-top: -5%">Order Item</label>
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center" style="width:100%">
                                        <thead>
                                            <tr>
                                              <th>#</th> 
                                              <th style="width: 33%">Description</th>
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
                                                    <td>{{ $product->qty }}</td>
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
                                        </tfoot>
                                    </table>
                                </div>
                                {{-- <hr/>
                                <div class="p-2">
                                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tempore illum eos quidem placeat qui est, ratione enim perspiciatis quibusdam optio? Voluptate magni facilis repellendus aut et quasi tempora esse consequatur.</p>
                                </div> --}}
							</div>
						</div>
					</div>
				</div>
			</div>
            <div class="card-footer">
                <button class="btn btn-success float-right"  type="pss" id="prntPSS">Print</button>
            </div>
		</div>
	</div>

</div>
@endsection
@section('js-script')
<script type="application/javascript">
    $(document).ready(function () {
        $('#prntPSS').click(function() {
            var printContents = $('#mainFrame').html();
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        });
    });
</script>
@endsection