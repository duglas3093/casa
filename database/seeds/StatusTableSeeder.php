<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('status')->truncate();

        DB::table('status')->insert([
            ['id' => 1, 'discription' => 'Active'],
            ['id' => 2, 'discription' => 'Inactive'],
            ['id' => 3, 'discription' => 'Revision'],
        ]);
    }
}
