<?php
namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Helpers\Common;
use App\Http\Controllers\Controller;
use Twilio\Rest\Client;
use Illuminate\Support\Facades\Cache;

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Artisan;

use App\Http\{
    Controllers\EmailController
};


use View, Auth, App, Session, Route, DB, Mail;

use App\Models\{
    Currency,
    Properties,
    Page,
    Settings,
    StartingCities,
    Testimonials,
    language,
    Admin,
    User,
    Wallet,
	SpaceType,
	Banners
};


require base_path() . '/vendor/autoload.php';

class HomeController extends Controller
{
    private $helper;
    
    public function __construct()
    {
        $this->helper = new Common;
    }

    public function index()
    {
        $data['starting_cities'] 	 = StartingCities::where('status', 'Active')->limit(8)->get();
        $data['properties']          = Properties::recommendedHome();
        $data['testimonials']        = Testimonials::getAll();
        $sessionLanguage             = Session::get('language');
        $language                    = Settings::where(['name' => 'default_language', 'type' => 'general'])->first();
		
		$data['recentproperties']    = Properties::where('status', '=', 'Listed')->where('admin_approval', '=', '1')->limit(8)->orderBy('id', 'DESC')->get();
        $languageDetails             = language::where(['id' => $language->value])->first();
        
    	$data['banner']              = Banners::where('status', '=', 'Active')->orderBy('id', 'DESC')->get();
        $data['current_lang1']		 = Session::get('language');


        if (!($sessionLanguage)) {
            Session::pull('language');
            Session::put('language', $languageDetails->short_name);
            App::setLocale($languageDetails->short_name);
        }

        $pref = Settings::getAll();

        $prefer = [];

        if (!empty($pref)) {
            foreach ($pref as $value) {
                $prefer[$value->name] = $value->value;
            }
            Session::put($prefer);
        }

        return view('home.home', $data); 
    }
    
    public function phpinfo()
    {
        echo phpinfo();
    }

    public function login()
    {
        return view('home.login');
    }

    public function setSession(Request $request)
    {
        if ($request->currency) {
            Session::put('currency', $request->currency);
            $symbol = Currency::code_to_symbol($request->currency);
            Session::put('symbol', $symbol);
        } elseif ($request->language) {
            Session::put('language', $request->language);
            $name = language::name($request->language);
            Session::put('language_name', $name);
            App::setLocale($request->language);
        }
    }

    public function cancellation_policies()
    {
        return view('home.cancellation_policies');
    }

    public function staticPages(Request $request)
    {
        /* $pages          = Page::where(['url'=>$request->name, 'status'=>'Active']);
        if (!$pages->count()) {
            abort('404');
        }
        $pages           = $pages->first();
        $data['content'] = str_replace(['SITE_NAME', 'SITE_URL'], [SITE_NAME, url('/')], $pages->content);
        $data['title']   = $pages->url;
        $data['url']     = url('/').'/';
        $data['img']     = $data['url'].'public/images/2222hotel_room2.jpg';
        $data['testimonials']        = Testimonials::getAll(); */
		
		$current_lang = Session::get('language');
        $pages        = Page::where(['url'=>$request->name, 'status'=>'Active']);
		
        if (!$pages->count()) {
            abort('404');
        }
        $pages           = $pages->first();
		$temp_id 		= $pages->temp_id;
		$pages1        = Page::where(['status'=>'Active', 'temp_id'=>$temp_id, 'lang'=>$current_lang ])->first();
		
        $data['content'] = str_replace(['SITE_NAME', 'SITE_URL'], [SITE_NAME, url('/')], $pages1->content);
        $data['title']   = $pages->url;
        $data['url']     = url('/').'/';
        $data['img']     = $data['url'].'public/images/2222hotel_room2.jpg';
        $data['testimonials']        = Testimonials::getAll();
        return view('home.static_pages', $data);
    }


   

    public function walletUser(Request $request){

        $users = User::all();
        $wallet = Wallet::all();


        if (!$users->isEmpty() && $wallet->isEmpty() ) {
            foreach ($users as $key => $user) {

                Wallet::create([
                    'user_id' => $user->id,
                    'currency_id' => 1,
                    'balance' => 0,
                    'is_active' => 0
                ]);
            }
        }

        return redirect('/');

    }
    
    public function addContact(Request $request)
	{
	    $data1 		= $request->all();
		$username 	= $data1['username'];
		$useremail  = $data1['useremail'];
		$message1	= $data1['message'];
		
		DB::insert('insert into contact (username,useremail,message) values (?, ?, ?)', [$username,$useremail,$message1]);
		
        $data = [
          'username'    => $request->username,
          'useremail'   => $request->useremail,
          'message'     => $request->message
        ];
        
        $email_controller = new EmailController;
        $email_controller->contact_user($data);
		
		return back()->with('success', 'Your Message has been received');
	}
	
	public function svimport(Request $request)
	{	
	    if(config('global.demosite')=="yes")
		{
    		foreach(\DB::select('SHOW TABLES') as $table)
    		{
    			$table_array = get_object_vars($table);
    			\Schema::drop($table_array[key($table_array)]);
    		}
    		Artisan::call('cache:clear');
    		
    		$path = public_path('airbnb.sql'); 
    
            $sql = file_get_contents($path); 
            DB::unprepared($sql);
    
    		$message = "Restore successfully completed";
    		return redirect('/')->with('isuccess', $message); 
		}
		else
		{
			return redirect('/');
		}
	}
    
}
