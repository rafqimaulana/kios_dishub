<?php

namespace App\Http\Controllers;
use App\Models\pembayaran;

use Illuminate\Http\Request;

class StatusController extends Controller
{
    public function index()
    {
        return view('dashboard.status.index', [
            'pembayarans' =>  pembayaran::all(),
        ]);
    }
}
