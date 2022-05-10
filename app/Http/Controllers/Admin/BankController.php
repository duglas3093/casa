<?php

namespace App\Http\Controllers\Admin;
use Validator;
use DB;

use App\Http\Helpers\Common;

use App\Http\Controllers\Controller;
use App\Http\Controllers\EmailController;

use App\DataTables\BanksDataTable;

use App\models\{
    Bank,
};

use Illuminate\Http\Request;

class BankController extends Controller
{
    private $helper;

    public function __construct()
    {
        $this->helper = new Common;
    }

    public function index(BanksDataTable $dataTable) 
    {   
        $data['banks'] = Bank::getAll();

        if (isset(request()->reset_btn)) {
            $data['from']        = null;
            $data['to']          = null;
            $data['allstatus']   = '';
            $data['alltypes']   = '';
            $data['allproperties']   = '';
            return $dataTable->render('admin.bank.view', $data);
        }

        return $dataTable->render('admin.bank.view', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function add(Request $request, EmailController $email_controller)
    {
        if (! $request->isMethod('post')) {
            return view('admin.bank.add');
        } elseif ($request->isMethod('post')) {
            $rules = array(
                'initials'    => 'required|max:255',
                'name'     => 'required|max:255'
            );

            $fieldNames = array(
                'initials'    => 'initials',
                'name'     => 'name'
            );

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames); 

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput(); 
            } else {
                $bank                  = new Bank;
                $bank->initials        = $request->initials;
                $bank->name            = $request->name;
                $bank->status          = $request->status;

                $bank->save();

                $this->helper->one_time_message('success', 'Added Successfully');

                return redirect('admin/bank');
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
        $data['bank'] = DB::table('banks')->where('id',$request->id)->first();  

        if (! $request->isMethod('post')) { 
            $data['bank_edit_tab'] = 'active';
            return view('admin.bank.edit', $data);
            
        } else if($request->isMethod('post')) {
            $rules = array(
                'initials'    => 'required|max:255',
                'name'       => 'required|max:255|unique:banks,name,'.$data['bank']->id,
            );
            $messages = array(
                'name' => 'Bank already existed.',
            );

            $fieldNames = array(
                'initials'    => 'Initials',
                'name'     => 'Name'
            );

            $validator = Validator::make($request->all(), $rules, $messages);
            $validator->setAttributeNames($fieldNames); 

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            } else {
                $bank                     = Bank::find($request->id);
                $bank->initials           = $request->initials;
                $bank->name               = $request->name;
                $bank->status          = $request->status;

                $bank->save();

                $this->helper->one_time_message('success', 'Updated Successfully');
                return redirect('admin/bank');
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
