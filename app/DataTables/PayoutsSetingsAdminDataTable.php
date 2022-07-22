<?php
namespace App\DataTables;
use App\Models\User;
use App\Models\Withdrawal;
// use App\Models\Bank;
use App\Models\PayoutSetting;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Services\DataTable;
use Auth;
use Request;

class PayoutsSetingsAdminDataTable extends DataTable
{
    public function ajax(){
        return datatables()
        ->eloquent($this->query())
        ->addColumn('id', function ($payoutsSetings){
            return $payoutsSetings->id;
        })
        ->addColumn('actions', function ($payoutsSetings) {
            $edit = '<a href="' . url('admin/payouts/approved-account/' . $payoutsSetings->id) . '" class="btn btn-sm svbtn" style="display: inline-block"><i class="fa fa-check" aria-hidden="true"></i></a>&nbsp;'.
                    '<a href="' . url('admin/payouts/reject-account/' . $payoutsSetings->id) . '" class="btn btn-sm svbtn" style="display: inline-block"><i class="fa fa-times" aria-hidden="true"></i></a>&nbsp;';
            return $edit;
        })
            ->addColumn('account_name', function ($payoutsSetings) {
            return '<span>' . ucfirst($payoutsSetings->account_name) . '</span>';
        })
            ->addColumn('account_number', function ($payoutsSetings) {
            $html = '<span>' 
                        . ucfirst($payoutsSetings->account_number) . '<br>' 
                        . ucfirst($payoutsSetings->bank_name) .
                    '</span>';
            return $html;
        })
            ->addColumn('status', function ($payoutsSetings) {
            // if ($payoutsSetings->formatted_phone == '') return '-';
            return '<span>' . ucfirst($payoutsSetings->status) . '</span>';
        })
            ->addColumn('created_at', function ($users) {
            return dateFormat($users->created_at);
        })
        ->rawColumns(['number','account_name', 'account_number', 'status','actions'])
        ->make(true);
    }

    public function query(){
        $query = PayoutSetting::where(['status' => 'Revision'])->select();
        return $this->applyScopes($query);
    }

    public function html()
    {
        return $this->builder()
        ->addColumn(['data' => 'id', 'name' => 'id', 'title' => 'ID'])
        ->addColumn(['data' => 'account_name', 'name' => 'account_name', 'title' => 'Account name'])
        ->addColumn(['data' => 'account_number', 'name' => 'account_number', 'title' => 'Account Number'])
        ->addColumn(['data' => 'status', 'name' => 'status', 'title' => 'Status'])
        ->addColumn(['data' => 'created_at', 'name' => 'created_at', 'title' => 'Created At'])
        ->addColumn(['data' => 'actions', 'name' => 'actions', 'title' => 'Action', 'orderable' => false, 'searchable' => false])

        ->parameters([
            'dom' => 'lBfrtip',
            'buttons' => [],
            'order' => [0, 'desc'],
            'pageLength' => \Session::get('row_per_page'),
        ]);
    }


    protected function getColumns()
    {
        return [
        'id',
        'created_at',
        'updated_at',
        ];
    }


    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'payoutsdatatables_' . time();

    }
}
