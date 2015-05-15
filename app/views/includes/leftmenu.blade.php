<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		@foreach($categories as $category)
		  @if(isset($page_name) && $page_name == $category->name)
		  <li class="active"><a href='{{URL::Route("get-links-by-category",$category->name)}}'>{{$category->name}}</a></li>
	      @else
		  <li><a href='{{URL::Route("get-links-by-category",$category->name)}}'>{{$category->name}}</a></li> 
		  @endif
		@endforeach
		
	</ul>
	
	@if(Auth::check())
	<ul class="nav nav-sidebar">
		<li><a href="{{URL::Route('get-submit-link')}}"> <span class="glyphicon glyphicon-plus"></span> Submit Link</a></li>
		
	</ul>
	@endif
	
	<ul class="nav nav-sidebar">
		<!--<li><a href=""> <span class="glyphicon glyphicon-star"></span> Most Visited</a></li>-->
		<li><a href="{{URL::Route('get-most-liked-link')}}"> <span class="glyphicon glyphicon-thumbs-up"></span> Most Liked</a></li>
		<li><a href="{{URL::Route('get-most-favorite-link')}}"> <span class="glyphicon glyphicon-heart"></span> Most Favorities</a></li>
		<li><a href="{{URL::Route('get-latest-comments')}}"> <span class="glyphicon glyphicon-comment"></span> Latest Comment</a></li>
		@if(Auth::check())
			@if(Auth::user()->links->count())
			<li><a href="{{URL::Route('get-your-link')}}"> <span class="glyphicon glyphicon-asterisk"></span> Your Links</a></li>
			<li><a href="{{URL::Route('get-friend-request-details',Crypt::encrypt(Auth::user()->id))}}"> <span class="glyphicon glyphicon-user"></span> Friend Requests</a></li>
			@endif
		@endif
	</ul>
</div>