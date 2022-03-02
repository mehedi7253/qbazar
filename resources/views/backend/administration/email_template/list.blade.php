@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h4 class="header-title">{{ _lang('Email Templates') }}</h4>
			</div>
			<div class="card-body">
				<table class="table data-table">
					<thead>
						<tr>
							<th>{{ _lang('Name') }}</th>
							<th>{{ _lang('Subject') }}</th>
							<th class="text-center">{{ _lang('Action') }}</th>
						</tr>
					</thead>
					<tbody>
						@foreach($emailtemplates as $emailtemplate)
						<tr id="row_{{ $emailtemplate->id }}">
							<td class='name'>{{ ucwords(str_replace('_',' ',$emailtemplate->name)) }}</td>
							<td class='subject'>{{ $emailtemplate->subject }}</td>
							<td class="text-center">
								<a href="{{action('EmailTemplateController@edit', $emailtemplate['id'])}}" class="btn btn-warning btn-sm">{{ _lang('Edit') }}</a>
								<a href="{{action('EmailTemplateController@show', $emailtemplate['id'])}}" class="btn btn-primary btn-sm">{{ _lang('View') }}</a>
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