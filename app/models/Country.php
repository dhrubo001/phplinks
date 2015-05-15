<?php
class Country extends Eloquent{
 
    public function users(){
	  return $this->hasMany('Users');	
	 }
	 
	 public function posts(){
	  return $this->hasManyThrough('Link','User'); 
	}
	
	
}