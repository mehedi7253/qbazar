@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header d-flex align-items-center">
				<h4 class="header-title">{{ _lang('Languages') }}</h4>
				<a class="btn btn-primary btn-sm ml-auto" href="{{ route('languages.create') }}"><i class="icofont-plus-circle"></i> {{ _lang('Add New') }}</a>
			</div>

			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>{{ _lang('Language Name') }}</th>
								<th>{{ _lang('Edit Translation') }}</th>
								<th>{{ _lang('Remove') }}</th>
							</tr>
						</thead>
						<tbody>
						  @foreach(get_language_list() as $language)
							<tr>
								<td>{{ $language }}</td>
								<td>
									<a href="{{ action('LanguageController@edit', $language) }}" class="btn btn-primary btn-sm"><i class="icofont-edit-alt"></i> {{ _lang('Backend Translation') }}</a>
									<a href="{{ action('LanguageController@update_website_language', $language) }}" class="btn btn-success btn-sm"><i class="icofont-edit-alt"></i> {{ _lang('Website Translation') }}</a>
								</td>
								<td>
									<form action="{{ action('LanguageController@destroy', $language) }}" method="post">
									   {{ csrf_field() }}
									   <input name="_method" type="hidden" value="DELETE">
									   <button class="btn btn-danger btn-sm btn-remove" type="submit"><i class="icofont-ui-delete"></i> {{ _lang('Delete') }}</button>
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
</div>

@endsection


