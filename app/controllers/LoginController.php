<?php
	class LoginController extends BaseController{
		
		public function __construct(Category $categories){
			$categories = Category::all();
			
			$share = [
			'categories'=> $categories,
			
			];
			View::share($share);
		}
		
		public function getSignUp(){
		
			return View::make('pages.signup');
		}
		
		public function postSignUp(){
			//dd(Input::all());	
			
			$validator = Validator::make(Input::all(),User::$signup_rules);
			
			if($validator->fails())
			{
				return Redirect::back()
				->withErrors($validator)
				->withInput();
			}
			$user = new User;
			$user->username = Input::get('username');
			$user->email = Input::get('email');
			$user->password = Hash::make(Input::get('password'));
			
			if($user->save())
			{
				$credentials = [
			    'email' => Input::get('email'),
				'password' => Input::get('password')
				];
				if(Auth::attempt($credentials))
				{
					return Redirect::to('/');  
				}
				return Redirect::back()
				->with('success','Registration successfull, login now');
			}
			/*return Redirect::back()
			->with('error','Something went wrong please try again');*/
		}
		
		public function getSignIn(){
			return View::make('pages.signin');
		}
		
		public function postSignIn(){
		
		//dd(Input::all());
			$credentials['username'] = Input::get('username_email');
			$credentials['password'] = Input::get('password');
			
			if(str_contains($credentials['username'],"@"))
			{
				$credentials['email'] = $credentials['username'];
				unset($credentials['username']);
			}
			
			if(Auth::attempt($credentials))
			{
				return Redirect::Route('get-home');   
			}
			return Redirect::Route('get-sign-in')
			->with('error','Incorrect Email/Password Combination');
		}
		
		public function getLogout(){
			Auth::logout();
			return Redirect::to('/');
		}
		
		
	}		