<?php

namespace App\Api\Controllers;

use App\Introduction;
use App\Http\Controllers\Controller;

class IntroductionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Introduction::where('status', '启用')->orderBy('id', 'desc')->paginate(10);

        $retData = [
            'code' => 1000,
            'info' => 'success',
            'data' => $data
        ];

        return response()->json($retData);
    }
}
