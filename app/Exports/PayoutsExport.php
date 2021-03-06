<?php

namespace App\Exports;

use App\Models\Payouts;
use App\Models\User;
use App\Models\Payout_settings;
use App\Models\Withdrawal;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class PayoutsExport implements FromArray,WithHeadings,ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function array(): array
    {
        $to                 = setDateForDb(request()->to);
        $from               = setDateForDb(request()->from);
        $status             = isset(request()->status) ? request()->status : null;
        $types              = isset(request()->types) ? request()->types : null;
        $property           = isset(request()->types) ? request()->types : null;

        $query = Withdrawal::orderBy('users.id', 'desc')->select();
        // $query = User::orderBy('id', 'desc')->select();
        $query->leftJoin('users','withdrawals.user_id','=','users.id');
        $query->leftJoin('payout_settings','users.id','=','payout_settings.user_id');
        if ($from) {
        $query->whereDate('withdrawals.created_at', '>=', $from);
        }

        if ($to) {
            $query->whereDate('withdrawals.created_at', '<=', $to);
        }

        if ($status) {
            $query->where('withdrawals.status', '=', $status);
        }


        $data = [];
        $account_type = "Cuenta Corriente";
        $payoutsList = $query->get();
        
        if ($payoutsList->count()) {
            foreach ($payoutsList as $key => $value) {
                $data[$key]['Bank']            = $value->bank_name;
                $data[$key]['User']            = $value->first_name." ".$value->last_name;
                $data[$key]['Document']        = $value->bank_branch_name;
                $data[$key]['Account Type']    = $account_type;
                $data[$key]['Account Number']  = $value->account_number;
                $data[$key]['Amount']          = isset($value->amount) ? "{$value->amount}" : "Datos no disponible";
                // $data[$key]['Status']          = $value->status;
                $data[$key]['Date']            = dateFormat($value->created_at);
            }
        } 
        return $data;
    }

    public function headings(): array
    {
        return [
            'Bank',
            'User',
            'Document CI',
            'Account Type',
            'Account Number',
            'Amount in Bs',
            // 'Status',
            'Date'
        ];
    }
}
