<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CommissionImport;

class CommissionController extends Controller
{
    /**
     * Import commission regular and update
     * commission config.
     *
    */
    public function import(CommissionImport $request)
    {
        dd($request->all());
    }
}
