<?php
namespace App\DataTables;
use App\Models\User;
use App\Models\Withdrawal;
use App\Models\Bank;
use App\Models\Price;
use Yajra\DataTables\Services\DataTable;
use Auth;
use Request;

class PricesDataTable extends DataTable
{
    public function ajax(){
        return datatables()
        ->eloquent($this->query())
        ->addColumn('price_id', function ($prices){
            return $prices->id;
        })
        ->addColumn('action', function ($prices) {
            $edit = '<a href="' . url('admin/edit-price/' . $prices->id) . '" class="btn btn-sm svbtn"><i class="fa fa-pencil"></i></a>&nbsp;';
            return $edit;
        })
        ->addColumn('amount', function ($prices) {
            return '<span>' . ucfirst($prices->amount) . '</span>';
        })
        ->addColumn('link', function ($prices) {
            return '<a href="'.$prices->link.'" target="_blank">' . substr(ucfirst($prices->link),0,20) . '...</a>';
        })
        ->addColumn('status', function ($prices) {
            return '<span>' . ucfirst($prices->status) . '</span>';
        })
        ->addColumn('created_at', function ($prices) {
            return dateFormat($prices->created_at);
        })
        ->addColumn('expires', function ($prices) {
            return dateFormat($prices->exprires);
        })
        ->rawColumns(
            [
                'price_id',
                'action',
                'amount',
                'link',
                'status',
                'created_at',
                'expires',
        ])
        ->make(true);
    }

    public function query(){
        $query = Price::select();
        return $this->applyScopes($query);
    }

    public function html()
    {
        return $this->builder()
        ->addColumn(['data' => 'price_id', 'name' => 'price_id', 'title' => 'ID'])
        ->addColumn(['data' => 'amount', 'name' => 'amount', 'title' => 'Amount'])
        ->addColumn(['data' => 'link', 'name' => 'link', 'title' => 'Link'])
        ->addColumn(['data' => 'status', 'name' => 'status', 'title' => 'Status'])
        ->addColumn(['data' => 'created_at', 'name' => 'created_at', 'title' => 'Created At'])
        ->addColumn(['data' => 'expires', 'name' => 'expires', 'title' => 'Expires At'])
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
