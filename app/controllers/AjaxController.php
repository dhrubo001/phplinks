<?php
class AjaxController extends BaseController{
   
   public function postLinkLike(){
     $link = Link::find(Input::get("link_id"));
	 if($link)
	 {
	    $linklike = new LinkLike;
		$linklike->link_id = $link->id;
		$linklike->user_id = Auth::user()->id;
		if($linklike->save())
		{
		  echo  'Saved';	
		}
		else{
			echo  'Not Saved';
			}
		
		
	 }
   }

   public function postLinkFab(){
     $link = Link::find(Input::get("link_id"));
	 if($link)
	 {
	 	$check = LinkFab::where(['user_id'=>Auth::user()->id,'link_id'=>$link->id])->first();
	 	if(!$check)
	 	{
	 	    $linkfab = new LinkFab;
			$linkfab->link_id = $link->id;
			$linkfab->user_id = Auth::user()->id;
			if($linkfab->save())
			{
			  echo  'Saved';	
			}
			else{
				echo  'Not Saved';
			}	
	 	}
	 	else{
	 		echo "Fab Already";
	 	}
	 }
   }
}