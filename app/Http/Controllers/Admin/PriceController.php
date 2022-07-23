<?php

namespace App\Http\Controllers\Admin;

use Validator;
// use DB;
use Illuminate\Support\Facades\DB;

use App\Http\Helpers\Common;

use App\Http\Controllers\Controller;
use App\Http\Controllers\EmailController;

use App\DataTables\PricesDataTable;

use App\models\{
    Price,
};

use Illuminate\Http\Request;

class PriceController extends Controller
{
    private $helper;

    public function __construct()
    {
        $this->helper = new Common;
    }

    public function index(PricesDataTable $dataTable) 
    {   
        $data['prices'] = Price::getAll();

        if (isset(request()->reset_btn)) {
            $data['from']        = null;
            $data['to']          = null;
            $data['allstatus']   = '';
            $data['alltypes']   = '';
            $data['allproperties']   = '';
            return $dataTable->render('admin.price.view', $data);
        }

        return $dataTable->render('admin.price.view', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function add(Request $request)
    {
        if (! $request->isMethod('post')) {
            return view('admin.price.add');
        } elseif ($request->isMethod('post')) {
            $rules = array(
                'amount'    => 'required|min: 0',
                'link'     => 'required|max:255',
                'expires'  => 'required'
            );

            $fieldNames = array(
                'amount'    => 'amount',
                'link'     => 'link',
                'expires'     => 'expires'
            );

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames); 

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput(); 
            } else {
                $price               = new Price;
                $price->amount       = $request->amount;
                $price->link         = $request->link;
                $price->expires      = $request->expires;
                $price->status       = $request->status;

                $price->save();

                $this->helper->one_time_message('success', 'Added Successfully');

                return redirect('admin/prices');
            }
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $data['price'] = DB::table('prices')->where('id',$request->id)->first();  

        if (! $request->isMethod('post')) { 
            $data['price_edit_tab'] = 'active';
            return view('admin.price.edit', $data);
            
        } else if($request->isMethod('post')) {

            $rules = array(
                'amount'    => 'required|min: 0',
                'link'     => 'required|max:255',
                'expires'  => 'required'
            );

            // $rules = array(
            //     'initials'    => 'required|max:255',
            //     'name'       => 'required|max:255|unique:prices,name,'.$data['price']->id,
            // );
            $messages = array(
                'link' => 'price link already existed.',
                'amoun' => 'price already existed.',
            );
            
            $fieldNames = array(
                'amount'    => 'amount',
                'link'     => 'link',
                'expires'     => 'expires'
            );
            // $fieldNames = array(
            //     'initials'    => 'Initials',
            //     'name'     => 'Name'
            // );

            $validator = Validator::make($request->all(), $rules, $messages);
            $validator->setAttributeNames($fieldNames); 

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            } else {
                $price               = Price::find($request->id);;
                $price->amount       = $request->amount;
                $price->link         = $request->link;
                $price->expires      = $request->expires;
                $price->status       = $request->status;

                $price->save();

                $this->helper->one_time_message('success', 'Updated Successfully');
                return redirect('admin/prices');
            }
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
