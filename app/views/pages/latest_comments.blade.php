@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
				<h2 class="page-header">Latest Comments</small></h2>
				
				
				<div class="blog-post">
					
					@if($comments->count())
					<div class="col-sm-12">
						
						@foreach($comments as $comment)
						<div class="row">
							<p><i>{{$comment->user->username}}</i> says {{$comment->comment}}</p>
							<hr/>
						</div>
						@endforeach
					</div>
					
					@endif 
					
				</div>
				
				
				
				
				
			</div>
			
			@include('includes.about')
			
		</div>
	</div>
	</div>
</div>

@stop
@section('scripts')

@stop