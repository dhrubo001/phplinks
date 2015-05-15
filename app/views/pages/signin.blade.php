@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
				<h2 class="page-header">Signup to get started</small></h2>
				
				@include('partials.notice')
				
				<form role="form" method="post" action="{{URL::Route('post-sign-in')}}" class="form">
					
					<div class="form-group">
						<label for="pwd">Username / Email:</label>
						<input type="text" class="form-control" id="username_email" name="username_email">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" id="password" name="password">
					</div>
					
				    {{Form::token()}}
				   <button type="submit" class="btn btn-primary submit">Sign In</button>
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
            $(this).html('Please wait...');
            $(this).attr('disabled',true);
            $('.form').submit();
        });
	});
</script>
@stop			