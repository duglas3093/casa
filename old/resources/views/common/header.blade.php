<!--================ Header Menu Area start =================-->
<?php 
    $lang = Session::get('language');
	$currentPaths= Route::getFacadeRoot()->current()->uri();	
	
?>
 <style>
   :root 
	{
        --primary-color: {{ $primary_color }};
    }
</style>
<input type="hidden" id="front_date_format_type" value="{{ Session::get('front_date_format_type')}}"> 



<header class="header_area  animated fadeIn <?php if($currentPaths=="index" or $currentPaths=="/"){?>homenav<?php } else {?>migrateshop_othernav<?php } ?>">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid container-fluid-90">
                <a class="navbar-brand logo_h d-none dark_logo" aria-label="logo" href="{{ url('/') }}"><img src="{{ $logo ?? '' }}" alt="logo" class="img-130x32"></a> 
            
               <a class="navbar-brand logo_h light_logo" aria-label="logo" href="{{ url('/') }}"><img src="{{ $light_logo ?? '' }}" alt="logo" class="img-130x32"></a> 

				<a class="navbar-brand logo_h d-block" aria-label="logo" href="{{ url('/') }}"><img src="{{ $favicon ?? '' }}" alt="logo" class="mob-logo"></a> 
                <a href="#" onclick="goBack()" class="mob-back-btn d-block d-sm-none"><i class="fas fa-chevron-left"></i></a>
				<!-- Trigger Button -->
				<a href="#" aria-label="navbar" class="navbar-toggler" data-toggle="modal" data-target="#left_modal">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
                </a>
				
				<!--<h4 class="sv_header_text mt-3">{{trans('messages.home.make_your_reservation')}}</h4>-->
					
				
				<!--<p class="sv_start_your_search text-14 p-2 pl-4 min-w-250 hide">{{trans('messages.header.start_your_search')}}
				    <button type="submit" class="btn vbtn-default p-2 ml-5 text-14"><i class="fa fa-search"></i> </button>
				</p>-->
				
           
		        <form id="front-search-form1" method="post" action="{{url('search')}}" class="mob-search mt-3 mb-3 p-2">
					{{ csrf_field() }}
					<div class="row">
						<input autocomplete="off" class="form-control p-3 text-14 ml-3 m-0" id="front-search-field1" placeholder="{{trans('messages.home.where_want_to_go')}}" name="location" type="text" value="@if(isset($location)) {{$location}} @endif" required>

					    <button type="submit" class="btn vbtn-default p-2 ml-5 text-14"><i class="fa fa-search"></i></button>
					</div>
				</form>

					
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <div class="nav navbar-nav menu_nav justify-content-end">

                            <!--@if(Request::segment(1) != 'help')
                                <div class="nav-item">
                                    <a class="nav-link p-2 mt-3" href="{{ url('property/create') }}" aria-label="property-create">
                                        <button class="btn button vbtn-default text-14 p-0 mt-2 pl-4 pr-4 br-50">
                                            <p class="p-3 mb-0">  {{trans('messages.header.list_space')}}</p>
                                        </button>
                                    </a>
                                </div>
                            @endif-->
                            <div class="nav-item">
                                    <a class="nav-link p-2 mt-3" href="{{ url('property/create') }}" aria-label="property-create">
                                        <button class="btn button vbtn-default text-14 p-0 mt-2 pl-4 pr-4 br-50">
                                            <p class="p-3 mb-0">  {{trans('messages.header.list_space')}}</p>
                                        </button>
                                    </a>
                                </div>
							
						<!--<div class="nav-item">
                            <a class="nav-link" href="#" aria-label="signup">{{trans('messages.header.become_a_host')}}</a>
                        </div>-->
						
						<div class="nav-item">
							<a class="nav-link globe" href="#" aria-label="modalLanguge" data-toggle="modal" data-target="#languageModalCenter"> <i class="fa fa-globe text-18"></i> </a>
                        </div>
                        
                        @if(!Auth::check())
                            <div class="nav-item">
									<div class="dropdown sv_user_login">
										<button class="dropdown-toggle" type="button" data-toggle="dropdown"><i class="fa fa-bars" aria-hidden="true"></i>
											<img src="{{ url('public/images/profile.jpg')}}" class="head_avatar" alt="">
										</button>
										
										<ul class="dropdown-menu">
										    <?php if(!request()->is('signup')) { ?>
										        <li><a  aria-label="" data-toggle="modal" data-target="#registermodel"  href="#">{{trans('messages.sign_up.sign_up')}}</a></li>
                                            <?php } else { ?>
										        <li><a  href="{{ url('signup') }}">{{trans('messages.sign_up.sign_up')}}</a></li>
										    <?php } ?>
										    
										  <?php if(!request()->is('login')) { ?>
  										      <li><a aria-label="" data-toggle="modal" data-target="#loginmodel"  href="#">{{trans('messages.header.login')}}</a></li>
                                            <?php } else { ?>
										        <li><a  href="{{ url('login') }}">{{trans('messages.header.login')}}</a></li>
										    <?php } ?>
										    
										  <hr>
										  <li><a href="{{url('help')}}">{{trans('messages.header.help')}}</a></li>
										</ul>
									</div>
								
                            </div>
                          
                        @else
                        
                        <?php
                            $msgcount = App\Models\Messages::Where('receiver_id', Auth::id())
                                            ->where('read', '0')
                                            ->orderBy('id', 'desc')->get()
                                            ->unique('booking_id'); 
                                                        
                            $mcount=  count($msgcount);              
                        ?>
							
						 <div class="nav-item">
									<div class="dropdown sv_user_login">
										<button class="dropdown-toggle" type="button" data-toggle="dropdown"><i class="fa fa-bars" aria-hidden="true"></i>
											<img src="{{Auth::user()->profile_src}}" class="head_avatar" alt="{{Auth::user()->first_name}}">
										@if($mcount!='0')<span class="text-10 mcount"><i class="fa fa-circle svred" aria-hidden="true"></i></span>@endif
										</button>
										
										<ul class="dropdown-menu">
										    <a class="text-color" href="{{ url('dashboard') }}">
                            					<li class="vbg-default-hover border-0  {{ (request()->is('dashboard')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.header.dashboard')}}
                            					</li>
                            				</a>
                            				<a class="text-color" href="{{ url('users/profile') }}">
                            					<li class="vbg-default-hover border-0 {{ (request()->is('users/profile') || request()->is('users/profile/media') || request()->is('users/edit-verification') || request()->is('users/security')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.utility.profile')}}
                            					</li>
                            				</a>
                            				<a class="text-color" href="{{ url('properties') }}">
                            					<li class="vbg-default-hover border-0 {{ (request()->is('properties')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.sidenav.my_listing')}}
                            					</li>
                            				</a>
                            				
                            				
                            				<a class="text-color" href="{{ url('my-bookings') }}">
                            					<li class="vbg-default-hover border-0 {{ (request()->is('my-bookings')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.header.my_booking')}}
                            					</li>
                            				</a>
                            				
                            				<a class="text-color" href="{{ url('trips/active') }}">
                            					<li class="vbg-default-hover border-0 {{ (request()->is('trips/active')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.header.your_trip')}}
                            					</li>
                            				</a>
                            				
                            				<a class="text-color" href="{{ url('mywishlist') }}">
                            					<li class="vbg-default-hover border-0 {{ (request()->is('mywishlist')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.utility.wishlist')}}
                            					</li>
                            				</a>
                                
                            				<a class="text-color" href="{{ url('inbox') }}">
                            					<li class="vbg-default-hover border-0 {{ (request()->is('inbox')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.header.inbox')}} <span class="badge badge-color">{{ $mcount }}</span>
                            					</li>
                            				</a>
                            				
                            				<a class="text-color" href="{{ url('users/payout-list') }}">
                            					<li class="vbg-default-hover border-0  {{ (request()->is('users/payout-list' ) || request()->is('users/payout')) ? 'active-sidebar' : '' }}">
                            						{{trans('messages.sidenav.payment_account')}}
                            					</li>
                            				</a>
                                            
                                            
										    <hr>
										  <li> <a class="" href="{{ url('logout') }}" aria-label="logout">{{trans('messages.header.logout')}}</a></li>
										</ul>
									</div>
								
                            </div>
			            

							
                           <!-- <div class="d-flex">
                                <div>
                                    <div class="nav-item mr-0">
                                    <img src="{{Auth::user()->profile_src}}" class="head_avatar" alt="{{Auth::user()->first_name}}">
                                </div>
                                </div>
                                <div>
                                <div class="nav-item ml-0 pl-0">
                                    <div class="dropdown">
                                        <a href="javascript:void(0)" class="nav-link dropdown-toggle text-15" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-label="user-profile" aria-haspopup="true" aria-expanded="false">
                                            {{Auth::user()->first_name}}
                                        </a>
                                        <div class="dropdown-menu drop-down-menu-left p-0 drop-width text-14" aria-labelledby="dropdownMenuButton">
                                            <a class="vbg-default-hover border-0  font-weight-700 list-group-item vbg-default-hover border-0" href="{{ url('dashboard') }}" aria-label="dashboard">{{trans('messages.header.dashboard')}}</a>
                                            <a class="font-weight-700 list-group-item vbg-default-hover border-0 " href="{{ url('users/profile') }}" aria-label="profile">{{trans('messages.utility.profile')}}</a>
                                            <a class="font-weight-700 list-group-item vbg-default-hover border-0 " href="{{ url('logout') }}" aria-label="logout">{{trans('messages.header.logout')}}</a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>-->
                        @endif
                    </div>
                </div>
            </div>
        </nav>
		
		
    </div>
	
			
</header>

<!-- Modal Window -->
<div class="modal right fade" id="left_modal" tabindex="-1" role="dialog" aria-labelledby="left_modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header border-0 secondary-bg"> 
                @if(Auth::check())
                    <div class="row justify-content-center align-items-center">
                        <div>
                            <img src="{{Auth::user()->profile_src}}" class="head_avatar" alt="{{Auth::user()->first_name}}">
                        </div>

                        <div>
                            <p class="text-white mt-4 mb-0"> {{Auth::user()->first_name}}</p>
                            <a class="text-white text-14" href="{{ url('dashboard') }}">{{trans('messages.header.show_profile')}}</a>
                        </div>
                    </div>
                @endif

                <button type="button" class="close text-28" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
			</div>
			
            <div class="modal-body p-0">
                <ul class="mobile-side">
                    @if(Auth::check())
                        <li><a href="{{ url('dashboard') }}">{{trans('messages.header.dashboard')}}</a></li>
                        <li><a href="{{ url('users/profile') }}">{{trans('messages.utility.profile')}}</a></li>
                        <li><a href="{{ url('properties') }}">{{trans('messages.sidenav.my_listing')}}</a></li>
                        <li><a href="{{ url('my-bookings') }}">{{trans('messages.header.my_booking')}}</a></li>
                        <li><a href="{{ url('trips/active') }}">{{trans('messages.header.your_trip')}}</a></li>
                        <li><a href="{{ url('mywishlist') }}">{{trans('messages.utility.wishlist')}}</a></li>

                        <li><a href="{{ url('inbox') }}">{{trans('messages.header.inbox')}} &nbsp;<span class="badge badge-color">{{ $mcount }}</span> </a></li>
                        
                        <li><a href="{{ url('users/payout-list') }}">{{trans('messages.sidenav.payment_account')}}</a></li>
                        <!--<li><a href="{{ url('users/transaction-history') }}">{{trans('messages.account_transaction.transaction')}}</a></li>
                        <li><a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            {{trans('messages.sidenav.reviews')}}
                        </a></li>
                    
                        <div class="collapse" id="collapseExample">
                            <ul class="ml-4">
                                <li><a href="{{ url('users/reviews') }}" class="text-14">{{trans('messages.reviews.reviews_about_you')}}</a></li>
                                <li><a href="{{ url('users/reviews_by_you') }}" class="text-14">{{trans('messages.reviews.reviews_by_you')}}</a></li>
                            </ul>
                        </div>-->
                        <li><a href="{{ url('logout') }}">{{trans('messages.header.logout')}}</a></li>
                    @else
                        <li><a href="{{ url('/') }}">{{trans('messages.home.home')}}</a></li>
                        <li><a href="{{ url('become-host') }}">{{trans('messages.header.become_host')}}</a></li>
                        <li><a href="{{ url('help') }}">{{trans('messages.header.help')}}</a></li>
                        <li><a href="{{ url('signup') }}">{{trans('messages.sign_up.sign_up')}}</a></li>
                        <li><a href="{{ url('login') }}">{{trans('messages.header.login')}}</a></li>
                    @endif
	                    <li>
	                        <a href="#" aria-label="modalLanguge" data-toggle="modal" data-target="#languageModalCenter"> <i class="fa fa-globe"></i> <u>{{  Session::get('language_name')  ?? $default_language[0]->name }} </u></a>
							<a href="#" aria-label="modalCurrency" data-toggle="modal" data-target="#currencyModalCenter"> <span class="ml-4">{!! Session::get('symbol')  !!} - <u>{{ Session::get('currency')  }}</u> </span></a>
						</li>
                    @if(Request::segment(1) != 'help')
                        <a class="mt-3" href="{{ url('property/create') }}">
                            <button class="btn vbtn-outline-success text-14 font-weight-700 pl-5 pr-5 pt-3 pb-3">
                                    {{trans('messages.header.list_space')}}
                            </button>
                        </a>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>
<!--================Header Menu Area =================-->

<script>
    function goBack() {
  window.history.back();
}

</script>


<!-- login model -->
<?php if(!request()->is('login')) { ?>

<div class="modal fade" id="loginmodel" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        
      <div class="modal-header">
		<h3 class="text-center">{{trans('messages.login.login')}}</h3>
        <button type="button" class="close closeLight position-relative" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	  	<div class="d-flex justify-content-center p-5">
		<div class=" mb-5" >
			@if(Session::has('message'))
				<div class="row mt-3">
					<div class="col-md-12 p-2 text-center text-14 alert {{ Session::get('alert-class') }} alert-dismissable fade in opacity-1">
						<a href="#"  class="close text-18" data-dismiss="alert" aria-label="close">&times;</a>
						{{ Session::get('message') }}
					</div>
				</div>
			@endif 
			
			<form id="login_form" method="post" action="{{url('authenticate')}}"  accept-charset='UTF-8'>  
				{{ csrf_field() }}
				<div class="form-group col-sm-12 p-0">
					@if ($errors->has('email'))
						<p class="error">{{ $errors->first('email') }}</p> 
					@endif
					<input type="email" class="form-control text-14" value="{{ old('email') }}" name="email" placeholder = "{{trans('messages.login.email')}}">
				</div>

				<div class="form-group col-sm-12 p-0">
					@if ($errors->has('password')) 
						<p class="error">{{ $errors->first('password') }}</p> 
					@endif
					<input type="password" class="form-control text-14" value="" name="password" placeholder = "{{trans('messages.login.password')}}">
				</div>
				
				@if($enable_captcha=="yes")
				
				{!! NoCaptcha::renderJs() !!}

								<div class="form-group col-md-12 p-0 mt-4 {{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
									{!! app('captcha')->display() !!}
									@if ($errors->has('g-recaptcha-response'))
										<span class="help-block text-danger">
											<strong>{{ $errors->first('g-recaptcha-response') }}</strong>
										</span>
									@endif
								</div>
				@endif

				<div class="form-group col-sm-12 p-0 mt-3" >
					<div class="d-flex justify-content-between">
						<div class="m-3 text-14">
							<input type="checkbox" class='remember_me' id="remember_me2" name="remember_me" value="1">
							{{trans('messages.login.remember_me')}}
						</div>
						
						<div class="m-3 text-14">
							<a href="#" class="forgot-password text-right" aria-label="" data-toggle="modal" data-target="#forgotmodel" data-dismiss="modal">{{trans('messages.login.forgot_pwd')}}</a>
						</div>
					</div>
				</div>

				<div class="form-group col-sm-12 p-0" >
					<button type='submit' id="" class="btn pb-3 pt-3  button-reactangular text-15 vbtn-success w-100 rounded"> <i class="spinner fa fa-spinner fa-spin d-none" ></i>
						<span id="btn_next-text" class="font-weight-700">{{trans('messages.login.login')}}</span>
					</button>
				</div>
			</form>
			
				
							<div id="sv_phone_div" class="hide">
							
							 <form class="" id="otp_form" method="post" action="{{url('sendotp')}}"  accept-charset='UTF-8'>  
									{{ csrf_field() }}
									
									<div class="form-group col-sm-12 p-0" id="svpno">
										<label class="font-weight-600">{{trans('messages.users_profile.phone')}}</label>
										<input type="tel" class="form-control text-14" id="pno" name="pno" required value="">
									</div>
								    <input type="hidden" name="default_country" id="default_country" class="form-control">
									<input type="hidden" name="carrier_code1" id="carrier_code1" class="form-control">
									<input type="hidden" name="formatted_phone" id="formatted_phone" class="form-control">

									<div class="form-input svotp" style="display:none">
										<input type="text" class="form-control" id="otp" name="otp" placeholder="{{trans('messages.users_profile.otp')}}" >
										<i class="icofont-phone"></i>
									</div>
								  
									<button type='' id="svsendotp" class="btn pb-3 mt-3 pt-3 text-15 rounded-3 vbtn-success w-100 rounded"> <i class="spinner fa fa-spinner fa-spin d-none" ></i>
										<span id="btn_next-text">{{trans('messages.login.login')}} </span>
									</button>
							</form>
							
							</div>
							
									
			<div class="mt-3 text-14">
				{{trans('messages.login.do_not_have_an_account')}}
				<a class="text-danger" id="svregmodal" aria-label="" data-toggle="modal" data-target="#registermodel" data-dismiss="modal" href="#" >
				{{trans('messages.login.register')}}
				</a>
			</div>  
			
			<p class="text-center font-weight-700 mt-4">{{trans('messages.login.or')}}</p>
			
			<a href="{{ isset($facebook_url) ? $facebook_url:URL::to('facebookLogin') }}">
				<button class="btn btn-outline-primary pt-3 pb-3 text-16 w-100">
					<span><i class="fab fa-facebook-f mr-2 text-16"></i> {{trans('messages.sign_up.sign_up_with_facebook')}}</span>
				</button>
			</a>
			<a href="{{URL::to('googleLogin')}}">
				<button class="btn btn-outline-danger pt-3 pb-3 text-16 w-100 mt-3">
				<span><i class="fab fa-google-plus-g  mr-2 text-16"></i>  {{trans('messages.sign_up.sign_up_with_google')}}</span>
				</button>
			</a>
			
				<?php if(isset($phoneSms['status'])) { if($phoneSms['status']=='1') { ?>
                			<button class="btn-success btn border-0 pt-3 pb-3 text-16 w-100 mt-3 phonebutt">
                				<span><i class="fa fa-mobile-alt  mr-2 text-16"></i> {{trans('messages.sign_up.sign_up_with_phone')}}</span>
                			</button>
							<?php } } ?>
							
							<button class="btn-success btn border-0 pt-3 pb-3 text-16 w-100 mt-3 emailbutt hide">
                				<span><i class="fa fa-envelope  mr-2 text-16"></i> {{trans('messages.sign_up.sign_up_with_email')}} </span>
                			</button>
			
		</div>
	</div>
	
	  
      </div>
   
    </div>
  </div>
</div>
<?php } ?>


<?php if(!request()->is('signup')) { ?>

<!-- Register modal -->
<?php
$url = URL::to("/");
 ?>
<div class="modal fade" id="registermodel" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
	
	 <div class="modal-header">
		<h3 class="text-center">	{{trans('messages.login.register')}}</h3>
        <button type="button" class="close closeLight position-relative" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
	  
      <div class="modal-body">
	  	<div class="d-flex justify-content-center">
		
		<div class="p-5 mb-5">
				<form id="signup_form" name="signup_form" method="post" action="{{url('create')}}" class='signup-form login-form' accept-charset='UTF-8' onsubmit="return ageValidate();">    
					{{ csrf_field() }}
					<div class="row text-16">
						<input type="hidden" name='email_signup' id='form'>
						<input type="hidden" name="default_country" id="default_country" class="form-control">
						<input type="hidden" name="carrier_code" id="carrier_code" class="form-control">
						@if(!Auth::check())
						<input type="hidden" name="formatted_phone" id="formatted_phone" class="form-control">
						@endif
						<div class="form-group col-sm-12 p-0">
							@if ($errors->has('first_name')) <p class="error-tag">{{ $errors->first('first_name') }}</p> @endif
							<input type="text" class='form-control text-14 p-2' value="{{ old('first_name') }}" name='first_name' id='first_name' placeholder='{{ trans('messages.sign_up.first_name') }}'>
						</div>

						<div class="form-group col-sm-12 p-0">
								@if ( $errors->has('last_name') ) <p class="error-tag">{{ $errors->first('last_name') }}</p> @endif
								<input type="text" class='form-control text-14 p-2' value="{{ old('last_name') }}" name='last_name' id='last_name' placeholder='{{ trans('messages.sign_up.last_name') }}'>
						</div>

						<div class="form-group col-sm-12 p-0">
								<input type="text" class='form-control text-14 p-2' value="{{old('email')}}" name='email' id='email' placeholder='{{ trans('messages.login.email') }}'>
								@if ($errors->has('email')) 
									<p class="error-tag">
									{{ $errors->first('email') }}
									</p> 
								@endif
								<div id="emailError"></div>
						</div>
						
						@if(!Auth::check())
						<div class="form-group col-sm-12 p-0">
								<input type="tel" class="form-control text-14 p-2" id="phone" name="phone" placeholder="111-111-1111">
								<span id="tel-error" class="text-13 text-danger"></span>
								<span id="phone-error" class="text-13 text-danger"></span>
						</div>
						@endif

						<div class="form-group col-sm-12 p-0">
								@if ( $errors->has('password') ) <p class="error-tag">{{ $errors->first('password') }}</p> @endif
								<input type="password" class='form-control text-14 p-2' name='password' id='password' placeholder='{{ trans('messages.login.password') }}'>
						</div>
						
						@if($enable_captcha=="yes")
						{!! NoCaptcha::renderJs() !!}

								<div class="form-group col-md-12 p-0 mt-4 {{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
								<div class="">
									{!! app('captcha')->display() !!}
									@if ($errors->has('g-recaptcha-response'))
										<span class="help-block text-danger">
											<strong>{{ $errors->first('g-recaptcha-response') }}</strong>
										</span>
									@endif
								</div>
								</div>
						@endif

						<button type='submit' id="btn" class="btn pb-3 pt-3 text-15 button-reactangular vbtn-success w-100 ml-0 mr-0 mb-3"> <i class="spinner fa fa-spinner fa-spin d-none" ></i>
							<span id="btn_next-text" class="font-weight-700">{{ trans('messages.sign_up.sign_up') }}</span>
						</button>
					</div>
				</form>
				<div class="text-14">
					{{trans('messages.sign_up.already')}} {{ $site_name }} {{ trans('messages.sign_up.member') }}?
					<a href="#" aria-label="" data-toggle="modal" data-target="#loginmodel" id="svloginmodal" data-dismiss="modal">
					{{trans('messages.sign_up.login')}}
					</a>
				</div>
				<p class="text-center font-weight-700 mt-4">{{trans('messages.login.or')}}</p>

				<a href="{{ isset( $facebook_url ) ? $facebook_url:URL::to('facebookLogin') }}">
					<button class="btn btn-outline-primary pt-3 pb-3 text-16 w-100">
						<span><i class="fab fa-facebook-f mr-2 text-16"></i> {{trans('messages.sign_up.sign_up_with_facebook')}}</span>
					</button>
				</a>

				<a href="{{URL::to('googleLogin')}}">
						<button class="btn btn-outline-danger pt-3 pb-3 text-16 w-100 mt-3">
							<span><i class="fab fa-google-plus-g  mr-2 text-16"></i>  {{trans('messages.sign_up.sign_up_with_google')}}</span>
						</button>
				</a>
			
				
			</div>
    </div>
</div>
</div>
</div>



</div>
</div>
</div>
<?php } ?>


<?php if(!request()->is('forgot_password')) { ?>

<div class="modal fade" id="forgotmodel" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        
      <div class="modal-header">
		  <h3 class="text-center">{{trans('messages.forgot_pass.reset_pass')}}</h3>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			   <span aria-hidden="true">&times;</span>
			</button>
       </div>
      <div class="modal-body">
			
          @if(Session::has('message'))
    		 <div class="row mt-5">
    		 	 <div class="col-md-12 text-13  alert {{ Session::get('alert-class') }} alert-dismissable fade in opacity-1">
    			 	 <a href="#"  class="close " data-dismiss="alert" aria-label="close">&times;</a>
    					{{ Session::get('message') }}
    			 </div>
    		 </div>
		  @endif 
              <div class="mt-5" >
                  <div class="col-md-12">
                     	<form id="forgot_password_form" method="post" action="{{url('forgot_password')}}" class='signup-form login-form mt-3' accept-charset='UTF-8'>  
				             {{ csrf_field() }}
				            <div class="form-group col-sm-12 p-0 mt-3">
    			               <label class="font-weight-600">{{trans('messages.forgot_pass.please_enter_email')}} </label>
				              	<input type="text" id="email" class="form-control" name="email" placeholder = "">
					            @if ($errors->has('email'))<label class="text-danger email-error">{{ $errors->first('email') }}</label>@endif
    			            </div>
    			            
    			            @if($enable_captcha=="yes")
							{!! NoCaptcha::renderJs() !!}

								<div class="form-group col-md-12 p-0 mt-4 {{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
								<div class="">
									{!! app('captcha')->display() !!}
									@if ($errors->has('g-recaptcha-response'))
										<span class="help-block text-danger">
											<strong>{{ $errors->first('g-recaptcha-response') }}</strong>
										</span>
									@endif
								</div>
								</div>
							@endif
    				        <div class="form-group col-sm-12 p-0 mt-5" >
    				             <button id="reset_btn" class="btn pb-3 pt-3 text-15 button-reactangular vbtn-success w-100 rounded" type="submit" > <i class="spinner fa fa-spinner fa-spin d-none" ></i>
							        <span id="btn_next-text" class="font-weight-700">{{trans('messages.forgot_pass.reset_password')}}</span>
						          </button>
				            </div>
			             </form>
                     </div>
               </div>
      
      </div>
   
    </div>
  </div>
</div>
<?php } ?>


@section('validation_script')
<?php if(!request()->is('login')) { ?>

<script type="text/javascript">
    @if( !Auth::check() )
       @if (count($errors) > 0)
           $("#loginmodel").modal('show');
        @endif  
    @endif  
</script>

<script type="text/javascript">
jQuery.validator.addMethod("laxEmail", function(value, element) {
	return this.optional( element ) || /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test( value );
}, "{{ __('messages.jquery_validation.email') }}" );


$(document).ready(function () {
	$('#login_form').validate({
		rules: {
			email: {
				required: true,
				maxlength: 255,
				laxEmail: true
			},

			password: {
				required: true
			}
		},
		submitHandler: function(form)
        {
 			$("#btn").on("click", function (e)
            {	
            	$("#btn").attr("disabled", true);
                e.preventDefault();
            });


            $(".spinner").removeClass('d-none');
            $("#btn_next-text").text("{{trans('messages.login.login')}}..");
            return true;
        },
		messages: {
			email: {
				required:  "{{ __('messages.jquery_validation.required') }}",
				maxlength: "{{ __('messages.jquery_validation.maxlength255') }}",
			},

			password: {
				required: "{{ __('messages.jquery_validation.required') }}",
			}
		}
	});
});
</script>
<script>
    $("#svsendotp").on('click', function(e) {
        		e.preventDefault();
        		var pno = $('#pno').val();
				var form = $('#otp_form')[0]; // You need to use standard javascript object here
				var formData = new FormData(form);
				//console.log(formData);
				if (pno == '') {
                    alert("Phone Number should not be empty.");
                    $("#pno").focus();
                }
                else{
            		$.ajax({
    	                type: 'POST',
						url: '{{url('/sendotp/')}}',
    	                data: formData,
    	                async: true,
    	                dataType: 'text',
    	                processData: false,
                        contentType: false,
                        enctype: 'multipart/form-data',
    	                success: function(results) {
    	                    var data_array="";
    	                    var data_array=JSON.parse(results);
    	                     console.log(results);
    	                    if(data_array.success === false){
    	                       if(data_array.data.otp=="invalid")
    	                       {
    	                           alert("Invalid Phone Number");
    	                       }
    	                       else if(data_array.data.otp=="enterotp")
    	                       {
    	                           alert("Enter OTP");
    	                       }
    	                       else if(data_array.data.otp=="otpinvalid")
    	                       {
    	                           alert("Invalid OTP");
    	                       }
    	                       e.preventDefault();
    	                     }
    	                     if(data_array.success === true){
    	                        if(data_array.data.otp=="sent")
    	                        {
    	                            $('#svpno').hide(); 
    	                            $('.svotp').show();
    	                            $('#svsendotp').html('Submit');
    	                            
    	                        }
								 else if(data_array.data.otp=="login")
    	                        {
    	                            var mainurl = "{{url('/')}}";
    	                            window.location.href = mainurl+'/dashboard';
    	                        }
 	                           
    	                     }

    	                   }
    	                
    	            });
                }
			
		});		
	
	
	
	/*
		intlTelInput
		*/
		$(document).ready(function()
		{
			$("#pno").intlTelInput({
				separateDialCode: true,
				nationalMode: true,
				preferredCountries: ["us"],
				autoPlaceholder: "polite",
				placeholderNumberType: "MOBILE",
				utilsScript: '{{ URL::to('/') }}/public/js/intl-tel-input-13.0.0/build/js/utils.js'
			});

			var countryData = $("#pno").intlTelInput("getSelectedCountryData");
			console.log(countryData);
			$('#default_country').val(countryData.iso2);
			$('#carrier_code1').val(countryData.dialCode);

			$("#pno").on("countrychange", function(e, countryData)
			{
				formattedPhone();
				// log(countryData);
				$('#default_country').val(countryData.iso2);
				$('#carrier_code1').val(countryData.dialCode);
				if ($.trim($(this).val()) !== '') {
					//Invalid Number Validation - Add
					if (!$(this).intlTelInput("isValidNumber") || !isValidPhoneNumber($.trim($(this).val()))) {
						$('#tel-error').addClass('error').html('Please enter a valid International Phone Number.').css("font-weight", "bold");
						hasPhoneError = true;
						$('#phone-error').hide();
					} else  {
						$('#tel-error').html('');

						$.ajax({
							method: "POST",
							url: "{{url('duplicate-phone-number-check')}}",
							dataType: "json",
							cache: false,
							data: {
								"_token": "{{ csrf_token() }}",
								'phone': $.trim($(this).val()),
								'carrier_code': $.trim(countryData.dialCode),
							}
						})
						.done(function(response)
						{
							if (response.status == true) {
								$('#tel-error').html('');
								$('#phone-error').show();

								$('#phone-error').addClass('error').html(response.fail).css("font-weight", "bold");
								hasPhoneError = true;
								enableDisableButton();
							} else if (response.status == false) {
								$('#tel-error').show();
								$('#phone-error').html('');

								hasPhoneError = false;
								enableDisableButton();
							}
						});
					}
				} else {
					$('#tel-error').html('');
					$('#phone-error').html('');
					hasPhoneError = false;
					enableDisableButton();
				}
			});
		});
		
		
		
		$(document).ready(function()
		{
			$("input[name=pno]").on('blur keyup', function(e)
			{
				formattedPhone();
				$('#btn').attr('disabled', false);
				$('#pno').html('').css("border-color","none");
				if ($.trim($(this).val()) !== '') {
					if (!$(this).intlTelInput("isValidNumber") || !isValidPhoneNumber($.trim($(this).val()))) {
						$('#tel-error').addClass('error').html('Please enter a valid International Phone Number.').css("font-weight", "bold");
						hasPhoneError = true;
						$('#btn').attr('disabled','disabled');
						$('#pno').css("border-color","#a94442");
						$('#phone-error').hide();
					} else {

						var phone = $(this).val().replace(/-|\s/g,""); //replaces 'whitespaces', 'hyphens'
						var phone = $(this).val().replace(/^0+/,"");  //replaces (leading zero - for BD phone number)
						var token = "{{csrf_token()}}";
						var pluginCarrierCode = $('#pno').intlTelInput('getSelectedCountryData').dialCode;
						$.ajax({
							url: "{{url('duplicate-phone-number-check')}}",
							method: "POST",
							dataType: "json",
							data: {
								'phone': phone,
								'carrier_code': pluginCarrierCode,
								'_token': "{{csrf_token()}}",
							}
						})
						.done(function(response)
						{
							if (response.status == true) {
								if (phone.length == 0) {
									$('#phone-error').html('');
								} else {
									$('#phone-error').addClass('error').html(response.fail).css("font-weight", "bold");
									hasPhoneError = true;
									enableDisableButton();
								}
							} else if (response.status == false) {
								$('#phone-error').html('');
								hasPhoneError = false;
								enableDisableButton();
							}
						});
						$('#tel-error').html('');
						$('#phone-error').show();
						hasPhoneError = false;
						enableDisableButton();
					}
				} else {
					$('#tel-error').html('');
					$('#phone-error').html('');
					hasPhoneError = false;
					enableDisableButton();
				}
			});
		});

		function formattedPhone()
		{
			if ($('#pno').val != '') {
				var p = $('#pno').intlTelInput("getNumber").replace(/-|\s/g,"");
				
				$("#formatted_phone").val(p);
			}
		}
		
		 $(".phonebutt").on('click', function(e) {
			 $('#login_form').hide();
			 $('.phonebutt').hide();
			  $('.emailbutt').show();
			 $('#sv_phone_div').show();

		 });

		$(".emailbutt").on('click', function(e) {
			 $('#login_form').show();
			 $('.phonebutt').show();
			  $('.emailbutt').hide();
			 $('#sv_phone_div').hide();

		 });
	
</script>

<?php } ?>


<?php if(!request()->is('forgot_password')) { ?>
<script type="text/javascript">
	jQuery.validator.addMethod("laxEmail", function(value, element) {
			// allow any non-whitespace characters as the host part
			return this.optional( element ) || /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test( value );
		}, "{{ __('messages.jquery_validation.email') }}" );

	$(document).ready(function () {
		
	$("#reset_btn").on("click", function (e)
    {	
    	$(".email-error").hide();
    });

    $('#forgot_password_form').validate({
        rules: {
			email: {
				required: true,
				maxlength: 255,
				laxEmail: true
			}
        },
        submitHandler: function(form)
        {
     		$("#reset_btn").on("click", function (e)
            {	
            	$("#reset_btn").attr("disabled", true);
                e.preventDefault();
            });
            
            $(".spinner").removeClass('d-none');
            $("#btn_next-text").text("{{trans('messages.forgot_pass.reset_link')}}..");
            return true;
        },
        messages: {
		email: {
				required:  "{{ __('messages.jquery_validation.required') }}",
				maxlength: "{{ __('messages.jquery_validation.maxlength255') }}",
            }
        }
    });
});
</script>

<?php } ?>


<script type="text/javascript">
 $(document).on('keyup', '#front-search-field1', function(){
  autocomplete = new google.maps.places.Autocomplete(document.getElementById("front-search-field1")); 
});

 $("#front-search-form1").submit(function(e) {
  e.preventDefault()
    var t = "",
        a = "",
        o = "1",
        i = "";
    var n = $("#front-search-field1").val(),   
        c = n.replace(" ", "+");
    window.location.href = APP_URL + "/search?location=" + c + "&checkin=" + t + "&checkout=" + a + "&guest=" + o, e.preventDefault()
}); 

/*
$(document).ready(function() 
{
    $('.mob-search').click(function() {
        $('.svmobsearch').toggle();
    });
}); */

</script>


<style>
   #payment-form .ElementsApp input{
    border:1px solid #eee !important;
}
</style>

@endsection
          
   























