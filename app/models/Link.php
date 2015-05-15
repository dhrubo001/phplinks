<?php
class Link extends Eloquent{

   public function user(){
	  return $this->belongsTo('User','user_id');  
	}
	
	public function category(){
	  return $this->belongsTo('Category');	
	}
	
	public function users(){
	  return $this->belongsToMany('User','link_likes','link_id','user_id');	
	}
	
	public function fabUsers(){
	  return $this->belongsToMany('User','link_fabs','link_id','user_id');	
	}
	
	public function noofLikes(){
		return $this->hasMany('LinkLike','link_id');
	}
	
	public function noofFabs(){
		return $this->hasMany('LinkFab','link_id');
	}
	
	public function comments(){
	   return $this->hasMany('Comment')->orderBy('id','DESC');	
	}
	
	public function visitedBy(){
	  return $this->belongsToMany('User','link_visited','link_id','user_id');	
	}
	
	
}