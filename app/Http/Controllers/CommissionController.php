<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CommissionConfig;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Requests\CommissionImport;
use App\Imports\CommissionImport as CommissionExcelImport;

class CommissionController extends Controller
{
    /**
     * Import commission regular and update
     * commission config.
     *
     * @param  App\Http\Requests\CommissionImport  $request
     * @return \Illuminate\Http\Response
     *
    */
    public function import(CommissionImport $request)
    {
        try {
            $exception = DB::transaction(function () use($request) {
                $config = new CommissionConfig;
                $newConfig = $config->create();

                Excel::import(
                    new CommissionExcelImport($newConfig),
                    $request->file('config')
                );
            });

            // if transaction is successfull.
            if(is_null($exception)) {
                return response()->json([
                    'message' => 'configuration updated successfully!'
                ], 200);
            } else {
                throw new Exception;
            }

        } catch (\Throwable $th) {
            throw $th;
            return response()->json([$th->getMessage()], 400);
        }
    }
}
