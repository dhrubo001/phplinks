<?php
	
	Route::get('/',array(
	'as' => 'get-home',
	'uses' => 'HomeController@getHome'
	));
	
	
	Route::get('/most-liked-links/',array(
	'as'   => 'get-most-liked-link',
	'uses' => 'HomeController@getMostLikedLinks'
	));
	
	Route::get('/most-favorite-links/',array(
	'as'   => 'get-most-favorite-link',
	'uses' => 'HomeController@getFabLikedLinks'
	));
	
	Route::get('/category/{category}',array(
	'as'   => 'get-links-by-category',
	'uses' => 'HomeController@getLinksByCategory'
	));
	
	Route::get('/details/{link_id}',array(
	'as'   => 'get-details',
	'uses' => 'HomeController@getDetails'
	));

	Route::get('/latest-comments/',array(
	'as'   => 'get-latest-comments',
	'uses' => 'HomeController@getLatestComments'
	));

	Route::get('/profile/{id}',array(
	'as'   => 'get-profile',
	'uses' => 'HomeController@getProfile'
	));
	
	
	
	
	
	
	  
	
	############################
	## GUEST ROUTES 
	###########################
	
	
	
	Route::group(array('before'=>'guest'),function(){
	
		  
	
	  
	   Route::get('/sign-up/',array(
		'as'   => 'get-sign-up',
		'uses' => 'LoginController@getSignUp'
		));
	    
		
		Route::get('/sign-in/',array(
		'as'   => 'get-sign-in',
		'uses' => 'LoginController@getSignIn'
		));
		
        Route::group(array('before'=>'csrf'),function(){
			
			Route::post('/sign-in/',array(
			'as'   => 'post-sign-in',
			'uses' => 'LoginController@postSignIn'
			));
			
			Route::post('/sign-up/',array(
			'as'   => 'post-sign-up',
			'uses' => 'LoginController@postSignUp'
			));
			
		});
		
		
	});
############################
## AUTHENTICATED ROUTES 
###########################
Route::group(array('before'=>'auth'),function(){

Route::get('/send-friend-request/{sender_id}/{requested_id}',array(
  'as'   => 'get-friend-request',
  'uses' => 'HomeController@getFriendRequest' 
));

Route::get('/friend-request/{id}',array(
  'as'   => 'get-friend-request-details',
  'uses' => 'HomeController@getFriendRequestDetails' 
));

Route::get('/accept-request/{id}',array(
    'as' => 'get-accept-request',
    'uses' => 'HomeController@getAcceptRequest'
));

Route::get('/submit-link/',array(
'as'   => 'get-submit-link',
'uses' => 'HomeController@getSubmitLink'
));

Route::get('/signout/',array(
'as'   => 'get-logout',
'uses' => 'LoginController@getLogout'
));

Route::get('/about',array(
'as'   => 'get-about',
'uses' => 'HomeController@getAbout'
));

Route::get('/your-link/',array(
'as'   => 'get-your-link',
'uses' => 'HomeController@getYourLink'
));





Route::group(array('before'=>'csrf'),function(){

Route::post('/submit-link/',array(
'as'   => 'post-submit-link',
'uses' => 'HomeController@postSubmitLink'
));

Route::post('/details/{link_id}',array(
'as'   => 'post-details',
'uses' => 'HomeController@postDetails'
));

});

###############################
### AJAX ROUTES
###############################
Route::post('/postLinkLike',array(
'uses' => 'AjaxController@postLinkLike'
));

Route::post('/postLinkFab',array(
'uses' => 'AjaxController@postLinkFab'
));

});


##########################################3
#### POPULATE DATAS
###########################################

/*Route::get('country',function(){

$faker = Faker\Factory::create();

for($i=1;$i<=10;$i++)
{
$country = new Country;
echo $country->name = $faker->country;
$country->save();
echo "<br/>";
}
});*/

/*Route::get('users',function(){

$faker = Faker\Factory::create();

for($i=1;$i<=10;$i++)
{
$country_id = Country::orderByRaw("RAND()")->pluck('id');
$user = new User;
$user->country_id = $country_id;
$user->username = $faker->userName;
$user->password = $faker->password;
$user->email = $faker->email;
$user->save();
}
});*/

/*Route::get('links',function(){

$faker = Faker\Factory::create();

for($i=1;$i<=10;$i++)
{
$user_id = User::orderByRaw("RAND()")->pluck('id');
$category_id = Category::orderByRaw("RAND()")->pluck('id');
$link = new Link;
$link->title = $faker->sentence($nbWords = 6);
$link->description = $faker->text;
$link->user_id = $user_id;
$link->category_id = $category_id;
$link->link = $faker->url;
$link->save();
}
});*/

/*Route::get('categories',function(){

$faker = Faker\Factory::create();
$categories = ['Custom PHP','Codeigniter','Laravel','Cake PHP','Symphony'];
for($i=0;$i<count($categories);$i++)
{

$link = new Category;
$link->name = $categories[$i];

$link->save();
}
});*/

/*Route::get('link-likes/5',function(){

$faker = Faker\Factory::create();

for($i=0;$i<1;$i++)
{
$user_id = User::orderByRaw("RAND()")->pluck('id');
$link_id = Link::orderByRaw("RAND()")->pluck('id');
$link = new LinkLike;
$link->link_id = $link_id;
$link->user_id = $user_id;
$link->save();
}
});*/

/*Route::get('link-fabs/{id}',function($id){

$faker = Faker\Factory::create();

for($i=0;$i<11;$i++)
{
$user_id = User::orderByRaw("RAND()")->pluck('id');
//$link_id = Link::orderByRaw("RAND()")->pluck('id');
$link = new LinkFab;
$link->link_id = $id;
$link->user_id = $user_id;
$link->save();
}
});*/

#########################################3
### RELATIONSHIPS TEST ROUTES
#########################################

Route::get('posts-by-user/{user_id}',function($user_id){
$user = User::find($user_id);
return $user->links;
});

Route::get('posts-by-country/{country_id}',function($country_id){
$country = Country::find($country_id);
return $country->posts;
});

Route::get('categories-by-country/{country_id}',function($country_id){
$categories = [];
$country = Country::find($country_id);
foreach($country->posts as $post)
{
if(!in_array($post->category->name,$categories)){
array_push($categories,$post->category->name);
}

}

echo "<pre>";
print_r($categories);

});


##### LINK LIKES
Route::get('user-likes/{user_id}',function($user_id){
$user = User::find($user_id);
return $user->likes;
});

Route::get('no-of-likes-by-link/{link_id}',function($link_id){
$link = Link::find($link_id);
//echo "No of Links:- ".$link->noofLikes->count();
return $link->noofLikes;
});

Route::get('users-by-link-like/{link_id}',function($link_id){
$link = Link::find($link_id);
return $link->users;
});


##### LINK FABS

Route::get('user-fabs/{user_id}',function($user_id){
$user = User::find($user_id);
return $user->fabs;
});

Route::get('no-of-fabs-by-link/{link_id}',function($link_id){
$link = Link::find($link_id);
//echo "No of Links:- ".$link->noofLikes->count();
return $link->noofFabs;
});

Route::get('check-user-link-by-link/{link_id}',function($link_id){
$link = Link::find($link_id);
//echo "No of Links:- ".$link->noofLikes->count();
return $link->noofFabs;
});

Route::get('users-by-link-like/{link_id}/{user_id}',function($link_id,$user_id){
$link = Link::find($link_id);
$user = User::find($user_id);
return $user->hasLiked($link_id);
});

Route::get('users-by-link-fab/{link_id}/{user_id}',function($link_id,$user_id){
$link = Link::find($link_id);
$user = User::find($user_id);
return $user->hasFaved($link_id);
});

Route::get('all-comments',function(){
	return $comments = Comments::all();

});

Route::get('requests-by-user/{id}',function($id){
	$user = User::find($id);
	return $user->requestsToMe;
	$userRequests = array_fetch(Auth::user()->requests->toArray(),'id');
	return $user->requests;
});


