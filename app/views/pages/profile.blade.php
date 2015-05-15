@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
				<h2 class="page-header">{{$user->username}}</small></h2>
				
				@include('partials.notice')
				
				
					
					
					<div class="form-group">
						<label for="pwd">Email:{{$user->email}}</label>
						
					</div>

					<div class="form-group">
						<label for="pwd">Registered Date:- {{date("M d,Y",strtotime($user->created_at))}}</label>
						
					</div>
					
					@if(Auth::check() && Auth::user()->id != $user->id)   
						 <?php
	                       $userRequests = array_fetch(Auth::user()->requests->toArray(),'id');
                         ?>
						 @if(!in_array($user->id,$userRequests))
						<hr>
						<?php
	                     $sender_id    = Crypt::encrypt(Auth::user()->id);
	                     $requested_id = Crypt::encrypt($user->id);

	                     
						?>
                          
		                  <a href='{{URL::Route("get-friend-request",[$sender_id,$requested_id])}}' class='btn btn-success'>Friend Request</a>
		                 
		                  @else
		                  <a href='#' class='btn btn-success' disabled>Request Sent</a>
		                @endif
	               @endif 
				<hr>

				@if($user->links->count())

				 <h4 class="page-header">Links submitted</h4>
					
					@foreach($user->links as $link)
					<div class="blog-post">
						
						<h4 class="blog-post-title"><a href='{{URL::Route("get-details",Crypt::encrypt($link->id))}}'>{{$link->title}}</a></h4>
						<p class="blog-post-meta">{{$link->created_at}} 
						&nbsp; <span class="glyphicon glyphicon-heart"></span> {{$link->noofFabs->count()}}  &nbsp; <span class="glyphicon glyphicon-thumbs-up" alt="Likes" title="Likes"></span> {{$link->noofLikes->count()}}</p> 
						<p><a href='{{$link->link}}' target="_blank">{{$link->link}}</a></p>
						<p>{{Str::limit($link->description,200)}}</p>
						<hr>
						
					</div>
					@endforeach
					@endif
				
				</div>

				@include('includes.about')
				
				</div>
				</div>
				</div>
				</div>
				</div>
				
@stop	
@section('scripts')

@stop			