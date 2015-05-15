@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
				<h2 class="page-header">{{$link->title}}</small></h2>
				
				
				<div class="blog-post">
					<p class="blog-post-meta">{{$link->created_at}} by <a href="{{URL::Route('get-profile',Crypt::encrypt($link->user->id))}}">{{$link->user->username}}</a> &nbsp; <span class="glyphicon glyphicon-heart"></span> {{$link->noofFabs->count()}}  &nbsp; <span class="glyphicon glyphicon-thumbs-up" alt="Likes" title="Likes"></span> {{$link->noofLikes->count()}}</p> 
					<p>
						@if(Auth::check())
						
							@if(Auth::user()->likes->count())
								
								@if(Auth::user()->hasLiked($link->id) == "Liked")
								<font color='green'>Liked It</font>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								@else
								<span class='like' data-link='{{$link->id}}'><a href='javascript::void()'>Like It</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								@endif
							@else
								<span class='like' data-link='{{$link->id}}'><a href='javascript::void()'>Like It</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							@endif
						
						    @if(Auth::user()->fabs->count())
								
								@if(Auth::user()->hasFaved($link->id) == "Favorite")
								<font color='green'>Your Favorite Link</font>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								@else
								<span class='fab' data-link='{{$link->id}}'><a href='javascript::void()'>Mark as Fab</a></span>&nbsp;
								@endif
							@else
								<span class='fab' data-link='{{$link->id}}'><a href='javascript::void()'>Mark as Fab</a></span>&nbsp;
							@endif
						@endif
					</p>
					<p><a href=''>{{$link->link}}</a></p>
					<p>{{$link->description}}</p>
					<hr>
					
					@if(Auth::check())
					<div class="col-sm-12 blog-main">
						<h3>Leave your comment</h3>
						
						
						<form role="form" method="post" action="{{URL::Route('post-details',Crypt::encrypt($link->id))}}" id='comment'>
							<div class="form-group">
								<label for="pwd">Message: <small>within 255 characters</small></label>
								<textarea class="form-control" id="message" name="message"></textarea>
							</div>
							
							{{Form::token()}}
							<button type="submit" class="btn btn-primary submit">Post</button>
						</form>
						
					</div>
					
					@else
						<div class="col-sm-12">
						<h3>Sign to post a comment <a href='{{URL::Route("get-sign-in")}}'>Click Here</a></h3>
						</div>
					@endif
					
					@if($link->comments->count())
					<div class="col-sm-12">
						<h3>All Comment</h3>
						@foreach($link->comments as $comment)
						<div class="row">
							<p><i>{{$comment->user->username}}</i> says {{$comment->comment}}</p>
							<hr/>
						</div>
						@endforeach
					</div>
					@else
			            <div class="col-sm-12">
								<h3>Be the first to write a comment</h3>
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
<script>
	$(document).ready(function(){
		$('.like').click(function(){
			var link_id = $(this).attr('data-link'); 
			
			if(link_id !=0 && link_id != "")
			{
				$(this).html('Please wait liking it...');
				$.post(base_url+'/postLinkLike',{link_id:link_id},function(data){
					//alert(data);
					if(data == "Saved")
					{
						$('.like').html('');
					    $('.like').html("<font color='green'>Liked It</font>");
					}
					
					
				});
			}
			
		});	

		$('.fab').click(function(){
			var link_id = $(this).attr('data-link'); 
			
			if(link_id !=0 && link_id != "")
			{
				$(this).html('Please wait favorating it...');
				$.post(base_url+'/postLinkFab',{link_id:link_id},function(data){
					//alert(data);
					if(data == "Saved")
					{
						$('.fab').html('');
					    $('.fab').append("<font color='green'>Your Favorite Link</font>");
					}
					else{
						$('.fab').html('');
					    $('.fab').html("<font color='green'>Already your favorite</font>");
					}
					
					
				});
			}
		});

		$('.submit').click(function(){
            $(this).html('Please wait...');
            $(this).attr('disabled',true);
            $('#comment').submit();
        });
	});
</script>
@stop