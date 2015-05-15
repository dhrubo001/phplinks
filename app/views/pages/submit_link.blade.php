@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
				<h2 class="page-header">Submit a new link</small></h2>
				
				@include('partials.notice')
				
				<form role="form" method="post" action="{{URL::Route('post-submit-link')}}" class="form">
					<div class="form-group">
						<label for="category">Category:</label>
						<select class="form-control" name="category">
						  @foreach($categories as $category)
						     
						     <option value='{{Crypt::encrypt($category->id)}}'>{{$category->name}}</option>
						  @endforeach
						</select>
						@if($errors->has('category'))
							 <p>{{$errors->first('category')}}</p>
						@endif
					</div>
					<div class="form-group">
						<label for="pwd">Title:</label>
						<input type="text" class="form-control" id="title" name="title" value="{{Input::old('title')}}">
						@if($errors->has('title'))
							 <p>{{$errors->first('title')}}</p>
						@endif
					</div>
					
					<div class="form-group">
						<label for="pwd">Link:</label>
						<input type="text" class="form-control" id="title" name="link"value="{{Input::old('link')}}">
						@if($errors->has('link'))
							 <p>{{$errors->first('link')}}</p>
						@endif
					</div>
					
				<div class="form-group">
				<label for="pwd">Description <small>Within 255 characters</small>:</label>
				<textarea class="form-control" name="description" rows="10">{{Input::old('description')}}</textarea>
				@if($errors->has('description'))
					<p>{{$errors->first('description')}}</p>
				@endif
				</div>
				{{Form::token()}}
				<button type="submit" class="btn btn-primary submit">Submit</button>
				</form>
				
				</div>
				
				
				
				@include('includes.about')
				
				</div>
				
				
				
				</div>
				</div>
				</div>
				</div>

				@stop
				@section('scripts')
                   <script>
                    $(document).ready(function(){
                    	$('.submit').click(function(){
                    		$(this).html('Please wait');
                    		$(this).attr('disabled',true);
                    		$('.form').submit();
                    	});
                    });
                   </script>
				@stop				