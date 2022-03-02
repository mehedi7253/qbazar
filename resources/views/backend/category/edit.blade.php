@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="header-title">{{ _lang('Update Category') }}</h4>
            </div>
            <div class="card-body">
                <form method="post" class="validate" autocomplete="off"
                    action="{{ action('CategoryController@update', $id) }}" enctype="multipart/form-data">
                    {{ csrf_field()}}
                    <input name="_method" type="hidden" value="PATCH">
                    <div class="row">
                        <div class="col-md-8 col-sm-12">
                            <div class="form-group row">
                                <label class="col-xl-3 col-form-label">{{ _lang('Name') }} <span class="required">*</span></label>
                                <div class="col-xl-9">
                                    <input type="text" class="form-control" name="trans[name]"
                                        value="{{ $category->translation->name }}" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-xl-3 col-form-label">{{ _lang('Description') }}</label>
                                <div class="col-xl-9">
                                    <textarea class="form-control"
                                        name="trans[description]">{{ $category->translation->description }}</textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-xl-3 col-form-label">{{ _lang('Font Icon') }}</label>
                                <div class="col-xl-9">
                                    <div class="d-flex">
                                        <input type="text" class="form-control" name="icon" value="{{ $category->icon }}">
                                        <a href="https://icofont.com/icons" class="btn btn-secondary" target="_blank">{{ _lang('Browse') }}</a>
                                    </div>
                                    <small>{{ _lang('Icon required for root category') }}</small><br>
                                </div>                  
                            </div>

                            <div class="form-group row">
                                <label class="col-xl-3 col-form-label">Banner</label>
                                <div class="col-xl-9">
                                    <input type="file" class="dropify" name="banner"
                                        data-default-file="{{ $category->banner != '' ? asset('uploads/media/'.$category->banner) : '' }}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-xl-3 col-form-label">{{ _lang('Image Icon') }} (64px X 64px)</label>
                                <div class="col-xl-9">
                                    <input type="file" class="dropify" name="image"
                                        data-default-file="{{ $category->image != '' ? asset('uploads/media/'.$category->image) : '' }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-xl-3 col-form-label">{{ _lang('Parent Category') }}</label>
                                <div class="col-xl-9">
                                    <select class="form-control select2 auto-select" data-selected="{{ $category->parent_id }}" name="parent_id">
                                        <option value="">{{ _lang('Select One') }}</option>
                                        @foreach(App\Models\Category::where('id', '!=', $category->id)->get() as $parent_category)
                                            <option value="{{ $parent_category->id }}">{{ $parent_category->translation->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">  
                                <label class="col-xl-3 col-form-label">{{ _lang('Status') }}</label>						
                                <div class="col-xl-9">    
                                    <select class="form-control auto-select" data-selected="{{ $category->is_active }}" name="is_active" required>
                                        <option value="1">{{ _lang('Active') }}</option>
                                        <option value="0">{{ _lang('InActive') }}</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-xl-9 offset-xl-3">
                                    <button type="submit" class="btn btn-primary btn-lg"><i class="icofont-check-circled"></i>
                                        {{ _lang('Update') }}</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection