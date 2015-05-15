<?php
class Comment extends Eloquent{
 
   public function user(){
	  return $this->belongsTo('User');  
	 }

    public function link(){
	   return $this->belongsTo('Link');	
	}
}