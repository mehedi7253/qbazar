@extends('layouts.app')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header d-flex align-items-center">
                <span class="panel-title">{{ _lang('Manage Product List') }}</span>
            </div>
            <div class="card-body">
                {{-- <div class="card-body"> --}}
                   <table id="orders_table" class="table table-bordered data-table" desc style="width:100%">
                    <thead>
                        <tr>
                            <th>{{ _lang('ID') }}</th>
                            <th>{{ _lang('Order Date') }}</th>
                            <th>{{ _lang('Customer Name') }}</th>
                            <th style="width: 20%">{{ _lang('Email') }}</th>
                            <th>{{ _lang('Total') }}</th>
                            <th>{{ _lang('Delivery') }}</th>
                            <th>{{ _lang('Payment') }}</th>
                            <th class="text-center">{{ _lang('Action') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($orders as $order)
                            <tr>
                                <td>{{ $order->id }} </td>
                                <td>{{ $order->created_at }}</td>
                                <td>{{ $order->customer_name }}</td>
                                <td>{{ $order->customer_email }}</td>
                                <td>{{ $order->currency }}{{ number_format($order->total,2) }}  </td>
                                <td>
                                    @if ($order->delivery_status == 'pending')
                                        <span class="badge badge-danger">Pending</span>
                                    @elseif ($order->delivery_status == 'processing')
                                        <span class="badge badge-primary">Processing</span>
                                     @elseif ($order->delivery_status == 'completed')
                                         <span class="badge badge-success">Completed</span>
                                    @endif
                                    
                                </td>
                                <td>
                                      @if ($order->payment_status == 'pending')
                                        <span class="badge badge-danger">Pending</span>
                                    @elseif ($order->payment_status == 'paid')
                                        <span class="badge badge-success">Paid</span>
                                    @endif
                                </td>
                                <td>
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Action
                                        </button>
                                        <div class="dropdown-menu">
                                            <a href="{{ route('orders.show',$order->id) }}" class="btn btn-primary btn-sm dropdown-item"><i class="icofont-eye-alt"></i> View</a>
                                             <form action="{{ route('orders.destroy', $order->id ) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-danger btn-sm dropdown-item" type="submit" onclick="return confirm('Are you sure to delete !!');"> <i class="icofont-ui-delete"></i> Delete</button>
                                            </form>
                                        </div>
                                    </div>
                                    
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {{-- </div> --}}
                
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