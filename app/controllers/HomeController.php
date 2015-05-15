<?php
	
	class HomeController extends BaseController {
		
		public function __construct(Category $categories){
			$categories = Category::all();
			$links = Link::where('status',1)->orderBy('id','desc')->paginate(10);
			
			$share = [
			'categories'=> $categories,
			'links'     => $links
			];
			View::share($share);
		}
		
		public function getHome()
		{
			
			return View::make('pages.dashboard');
		}
		
		public function getDetails($link_id)
		{
		    $link = Link::find(Crypt::decrypt($link_id));
		    
			if($link)
			{
		        if(Auth::check())
				{
					$linkVistCheck = Auth::user()->checkvisitedBy($link->id);
					if($linkVistCheck == false)
					{
						$LinkVisited  = new LinkVisited;
						$LinkVisited->link_id = $link->id;
						$LinkVisited->user_id = Auth::user()->id;
						$LinkVisited->save();
					}
		        }
		
				return View::make('pages.details_view')
				->with('link',$link);  
			}
		}
		
		public function postDetails($link_id)
		{
		  	$link = Link::find(Crypt::decrypt($link_id));
			if($link)
			{
				$validator = Validator::make(Input::all(),array(
				    'message' => 'required|max:255',
				));  
				if($validator->fails()){
				   return Redirect::back()
				           ->withErrors($validator)
						   ->withInput();
				}
				$comment = new Comment;
				$comment->link_id = $link->id;
				$comment->user_id = Auth::user()->id;
				$comment->comment = Input::get('message');
				$comment->save();
				return Redirect::back()
				          ->with('success','Thank you, comment posted successfully');
			}
		}
		
		public function getSubmitLink(){
			return View::make('pages.submit_link');	
		}
		
		public function postSubmitLink(){
		 
		 $validator = Validator::make(Input::all(),array(
		     'category'    => 'required',
			 'title'       => 'required',
			 'description' => 'required',
			 'link'        => 'required|url',
		  ));
		  
		  if($validator->fails())
		  {
			  return Redirect::back()
			          ->withErrors($validator)
					  ->withInput();
			
		  }
		  $link = new Link;
		  $link->title = Input::get('title');
		  $link->slug = Str::slug(Input::get('title'));
		  $link->description = Input::get('description');
		  $link->user_id = Auth::user()->id;
		  $link->link =Input::get('link');
		  $link->category_id = Crypt::decrypt(Input::get('category'));
		  $link->save();
		  return Redirect::back()
		  ->with('success','New link submitted');
		
	}
	
	public function getYourLink(){
	  $links = Auth::user()->links;
	  return View::make('pages.your_links')
	  ->with('links',$links);
	}
	
	public function getMostLikedLinks(){
	   return View::make('pages.most_liked_links');
	}
	
	public function getFabLikedLinks(){
		return View::make('pages.most_fab_links');
	}
	
	public function getLinksByCategory($category)
	{
	   $category = Category::where(['name'=>$category])->first();
	   if($category)
	   {
		   $links = Link::where(['category_id'=>$category->id])->orderBy('id','DESC')->get();
		   return View::make('pages.links_by_category')
		        ->with('links',$links)
				->with('category',$category)
				->with('page_name',$category->name);
	   }
	   return Redirect::back();
	}
	
	public function getProfile($id)
	{
		$user = User::find(Crypt::decrypt($id));
		if($user)
		{
			return View::make('pages.profile')
			->with('user',$user);
		}
		return Redirect::Route();
	}

	public function getLatestComments(){
		$comments = Comment::where('status',1)->orderBy('id','desc')->get();
		return View::make('pages.latest_comments')
		          ->with('comments',$comments);
	}

	public function getAbout(){
		return View::make('pages.about');
	}

	public function getFriendRequest($sender_id,$requested_id)
	{
		$sender = User::find(Crypt::decrypt($sender_id));
		if($sender)
		{
			$requested = User::find(Crypt::decrypt($requested_id));
			if($requested)
			{
				$check = FriendRequest::where(['sender_id'=>$sender->id,'requested_id'=>$requested->id])->first();
				if($check)
				{
					return Redirect::back()
					->with('error','Friend request already sent to '.$sender->username);
				}

				$reverseCheck = FriendRequest::where(['sender_id'=>$requested->id,'requested_id'=>$sender->id])->first();

				if($reverseCheck)
				{
					return Redirect::back()
					->with('error',$requested->username.' already sent a friend request to you');
				}

				$request = new FriendRequest;
				$request->sender_id = $sender->id;
				$request->requested_id = $requested->id;
				$request->save();

				return Redirect::back()
				->with('success','Friend request sent succesfully');
			}
		}
	}
	
	public function getFriendRequestDetails($id)
	{
		$user = User::find(Crypt::decrypt($id));
		$userRequests = $user->requests;

		 $requeststoMe = $user->requestsToMe;

		return View::make('pages.requests')
		->with('title','Friend Requests')
		->with('userRequests',$userRequests)
		->with('requeststoMe',$requeststoMe);
		
	}

	public function getAcceptRequest($id)
	{
		$request = FriendRequest::find(Crypt::decrypt($id));
		if($request)
		{
          $request->status = 2;
          $request->save();
          return Redirect::back()
		 ->with('success','Friend request accepted, now you can send message to your new friend directly');
		}
		return Redirect::back()
		 ->with('error','Invalid friend request id');
	}
}