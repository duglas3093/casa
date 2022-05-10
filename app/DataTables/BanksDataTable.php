<?php
namespace App\DataTables;
use App\Models\User;
use App\Models\Withdrawal;
use App\Models\Bank;
use Yajra\DataTables\Services\DataTable;
use Auth;
use Request;

class BanksDataTable extends DataTable
{
    public function ajax(){
        return datatables()
        ->eloquent($this->query())
        ->addColumn('bank_id', function ($banks){
            return $banks->id;
        })
        ->addColumn('action', function ($banks) {
            $edit = '<a href="' . url('admin/edit-bank/' . $banks->id) . '" class="btn btn-sm svbtn"><i class="fa fa-pencil"></i></a>&nbsp;';
            return $edit;
        })
            ->addColumn('initials', function ($banks) {
            return '<a href="' . url('admin/edit-bank/' . $banks->id) . '">' . ucfirst($banks->initials) . '</a>';
        })
            ->addColumn('name', function ($banks) {
            return '<a href="' . url('admin/edit-bank/' . $banks->id) . '">' . ucfirst($banks->name) . '</a>';
        })
            ->addColumn('status', function ($banks) {
            // if ($banks->formatted_phone == '') return '-';
            return '<a href="' . url('admin/edit-bank/' . $banks->id) . '">' . ucfirst($banks->status) . '</a>';
        })
            ->addColumn('created_at', function ($users) {
            return dateFormat($users->created_at);
        })
        ->rawColumns(['number','initials', 'name', 'status','action'])
        ->make(true);
    }

    public function query(){
        $query = Bank::select();
        return $this->applyScopes($query);
    }

    public function html()
    {
        return $this->builder()
        ->addColumn(['data' => 'bank_id', 'name' => 'bank_id', 'title' => 'ID'])
        ->addColumn(['data' => 'initials', 'name' => 'initials', 'title' => 'Initials'])
        ->addColumn(['data' => 'name', 'name' => 'name', 'title' => 'Bank Name'])
        ->addColumn(['data' => 'status', 'name' => 'status', 'title' => 'Status'])
        ->addColumn(['data' => 'created_at', 'name' => 'created_at', 'title' => 'Created At'])
        ->addColumn(['data' => 'action', 'name' => 'action', 'title' => 'Action', 'orderable' => false, 'searchable' => false])

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
