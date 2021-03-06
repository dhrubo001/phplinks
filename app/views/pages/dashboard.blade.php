@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
					<h2 class="page-header">Welcome to PHPLinks <small>Important PHP Links for PHP developers</small></h2>
					
					@foreach($links as $link)
					<div class="blog-post">
						
						<h4 class="blog-post-title"><a href='{{URL::Route("get-details",Crypt::encrypt($link->id))}}'>{{$link->title}}</a></h4>
						<p class="blog-post-meta">{{$link->created_at}} by 
						
						<a href="{{URL::Route('get-profile',Crypt::encrypt($link->user->id))}}">
						{{$link->user->username}}</a> 

						&nbsp; <span class="glyphicon glyphicon-heart"></span> {{$link->noofFabs->count()}}  &nbsp; <span class="glyphicon glyphicon-thumbs-up" alt="Likes" title="Likes"></span> {{$link->noofLikes->count()}}</p> 
						<p><a href='{{$link->link}}' target="_blank">{{$link->link}}</a></p>
						<p>{{Str::limit($link->description,200)}}</p>
						<hr>
						
					</div>
					@endforeach
					<ul class="pagination">
					 {{$links->links();}}
					<!--<li><a href="https://phpleaks.com/new/?page=1" rel="prev">«</a></li> <li><a href="https://phpleaks.com/new/?page=1">1</a></li><li class="active"><span>2</span></li> <li class="disabled"><span>»</span></li>-->
					</ul>
				</div>
				
				@include('includes.about')
				
			</div>
		</div>
	</div>
</div>

@stop