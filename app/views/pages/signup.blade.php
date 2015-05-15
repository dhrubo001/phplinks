@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
				<h2 class="page-header">Signup to get started</small></h2>
				
				
				<form role="form" method="post" action="{{URL::Route('post-sign-up')}}">
					<div class="form-group">
						<label for="email">Username:</label>
						<input type="username" class="form-control" id="username" name="username">
					</div>
					<div class="form-group">
						<label for="pwd">Email:</label>
						<input type="email" class="form-control" id="email" name="email">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" id="password" name="password">
					</div>
					<div class="form-group">
						<label for="pwd">Confirm Password:</label>
						<input type="password" class="form-control" id="confirm_password" name="confirm_password">
					</div>
				    {{Form::token()}}
				   <button type="submit" class="btn btn-primary">Sign Up</button>
				</form>
				
				</div>
				
				
				
				@include('includes.about')
				
				</div>
				
				
				
				</div>
				</div>
				</div>
				</div>
				
@stop				