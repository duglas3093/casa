<?php

namespace App\Exports;

use App\Models\Payouts;
use App\Models\User;
use App\Models\PayoutSetting;
use App\Models\Withdrawal;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

use Illuminate\Support\Facades\DB;

class PayoutsExportConfirm implements FromArray,WithHeadings,ShouldAutoSize
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

        $query = PayoutSetting::orderBy('users.id', 'desc')->select();
        // $query = User::orderBy('id', 'desc')->select();
        $query->leftJoin('users','payout_settings.user_id','=','users.id');
        // $query->leftJoin('payout_settings','users.id','=','payout_settings.user_id');
        if ($from) {
            // $query->whereDate('withdrawals.created_at', '>=', $from);
        }

        if ($to) {
            // $query->whereDate('withdrawals.created_at', '<=', $to);
        }
        $query->where('payout_settings.status', '=', 'Revision');

        // // if ($status) {
        // //     // $query->where('withdrawals.status', '=', $status);
        // }

        $data = [];
        $account_type = "Cuenta Corriente";
        $payoutsList = $query->get();
        // var_dump($payoutsList);
        if ($payoutsList->count()) {
            foreach ($payoutsList as $key => $value) {
                $data[$key]['User']            = $value->first_name." ".$value->last_name;
                $data[$key]['Account Name']    = $value->account_name;
                $data[$key]['CI']              = $value->bank_branch_name;
                $data[$key]['Account Number']  = $value->account_number;
                $data[$key]['Bank Name']       = $value->bank_name;
                $data[$key]['Date']            = dateFormat($value->created_at);
            }
        } 
        return $data;
    }

    public function headings(): array
    {
        return [
            'User',
            'Account Holder',
            'Document CI',
            'Account Number',
            'Bank',
            'Date'
        ];
    }
}
