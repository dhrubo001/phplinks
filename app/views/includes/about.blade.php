<div class="col-sm-4 blog-main">
	
	<h2 class="page-header">About</h2>
	<p>
		PHPLinks provides a collection of important PHP codes for our fellow PHP developers, just simply register and provide important links from anywhere which you feels can we usefull to other developers.	
	</p>
	@if(Auth::check())
		@if(Auth::user()->likes->count() > 0)
		<div class="sidebar-module">
			<h4 class="page-header">You Liked</h4>
			<ol class="list-unstyled">
				@foreach(Auth::user()->likes as $like)
				<li><a href="{{URL::Route('get-details',Crypt::encrypt($like->id))}}"><span class="glyphicon glyphicon-chevron-right"></span>{{Str::limit($like->title,30)}}</a> by <small>{{$like->user->username}}</small></li>
				<br/>
				@endforeach
			</ol>
		</div>
		@endif
	@endif
</div>