@extends('layouts.main')
@section('content')


<div class="container-fluid">
	<div class="row">
        @include('includes.leftmenu')
		
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			
			<div class="row">
				
				<div class="col-sm-8 blog-main">
				<h2 class="page-header">Your Requests</small></h2>
				
				@include('partials.notice')
				
				
					<div class="form-group">
					@if($userRequests->count())
						@foreach($userRequests as $uR)
                          <p>{{$uR->username}} - 
                          	@if($uR->pivot->status == 1)
                              <span class="label label-default">Request Sent</span>
                          	@elseif($uR->pivot->status == 2)
                              <span class="label label-success">Accepted</span>
                          	@elseif($uR->pivot->status == 3)
                              <span class="label label-danger">Declined</span>
                          	@endif
                          </p>
						@endforeach
					@else
					<p>No requests from your end</p>	
					@endif
					</div>

					
				<hr>

				<h2 class="page-header">Requests To You</h2>
					@if($requeststoMe->count())
						@foreach($requeststoMe as $rM)
                          <p>{{$rM->username}} - 
                          @if($rM->pivot->status == 1)
                              <a href='{{URL::Route("get-accept-request",Crypt::encrypt($rM->pivot->id))}}' class='btn btn-success'>Accept Request</a>
                          	@elseif($rM->pivot->status == 2)
                              <span class="label label-success">Accepted</span>
                          	@elseif($rM->pivot->status == 3)
                              <span class="label label-danger">Declined</span>
                          	@endif</p>
						@endforeach
					@else
					<p>No one requested to you</p>	
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