<?php

namespace App\Exports;

use App\Models\Payouts;
use App\Models\User;
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
        $query->leftJoin('users','user_id','=','users.id');
        if ($from) {
            $query->whereDate('created_at', '>=', $from);
        }

        if ($to) {
            $query->whereDate('created_at', '<=', $to);
        }

        if ($status) {
            $query->where('status', '=', $status);
        }


        $data = [];
        $payoutsList = $query->get();
        
        if ($payoutsList->count()) {
            foreach ($payoutsList as $key => $value) {
                // $data[$key]['User']            = $value->user->full_name;
                $data[$key]['User']            = $value->first_name." ".$value->last_name;
                $data[$key]['Payouts Account'] = $value->payment_methods->name;
                $data[$key]['Amount']          = $value->amount;
                $data[$key]['Status']          = $value->status;
                $data[$key]['Date']            = dateFormat($value->created_at);
            }
        } 
        return $data;
    }

    public function headings(): array
    {
        return [
            'User',
            'Account',
            'Amount',
            'Status',
            'Date'
        ];
    }
}
