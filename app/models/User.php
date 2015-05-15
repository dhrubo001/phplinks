<?php
	
	use Illuminate\Auth\UserTrait;
	use Illuminate\Auth\UserInterface;
	use Illuminate\Auth\Reminders\RemindableTrait;
	use Illuminate\Auth\Reminders\RemindableInterface;
	
	class User extends Eloquent implements UserInterface, RemindableInterface {
		
		use UserTrait, RemindableTrait;
		
		/**
			* The database table used by the model.
			*
			* @var string
		*/
		protected $table = 'users';
		
		/**
			* The attributes excluded from the model's JSON form.
			*
			* @var array
		*/
		protected $hidden = array('password', 'remember_token');
		
		public static $signup_rules = [
		
			'username' => 'required|min:4|unique:users,username',
			'email'    => 'required|min:4|unique:users,email',
			'password' => 'required|min:6',
			'confirm_password'=> 'required|same:password',
		
		];
		
		public function links(){
			return $this->hasMany('Link');	
		}
		
		public function Country(){
			return $this->belongsTO('Country');		
		}
		
		public function likes(){
			return $this->belongsToMany('Link','link_likes','user_id','link_id')->orderBy('link_likes.id','DESC');	
		}
		
		public function fabs(){
			return $this->belongsToMany('Link','link_fabs','user_id','link_id');	
		}
		
		public function hasLiked($link_id){
			if(in_array($link_id,array_fetch($this->likes->toArray(),'pivot.link_id')))
			{
				return 'Liked';	
			}
			return 'Not Liked';
		}
		
		public function hasFaved($link_id)
		{
			if(in_array($link_id,array_fetch($this->fabs->toArray(),'pivot.link_id')))
			{
				return 'Favorite';	
			}
			return 'Not Favorite';
		}
		
		public function comments(){
			return $this->hasMany('Comment');	
		}
		
		public function linkVisited(){
			return $this->belongsToMany('Link','link_visited','user_id','link_id');	
		}
		
		public function checkvisitedBy($link_id){
			if(in_array($link_id,array_fetch($this->linkVisited->toArray(),'pivot.link_id')))
			{
				return true;  
			}
			return false;
		}

		public function requests(){
			return $this->belongsToMany('User','friend_requests','sender_id','requested_id')->withPivot('status','id');
		}

		public function friends(){
			return $this->belongsToMany('User','friend_requests','sender_id','requested_id')->where('friend_requests.status',1);
		}

		public function requestsToMe(){
          return $this->belongsToMany('User','friend_requests','requested_id','sender_id')->withPivot('status','id');
		}
		
	}
