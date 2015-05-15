<?php
class FriendRequest extends eloquent{
	protected $table = "friend_requests";

	public function type(){
		return $this->belongsTo('requesttype','status');
	}
}