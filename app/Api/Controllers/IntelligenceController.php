<?php

namespace App\Api\Controllers;

use App\Intelligence;
use App\Http\Controllers\Controller;

class IntelligenceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Intelligence::where('status', '启用')->orderBy('id', 'desc')->paginate(10);

        $retData = [
            'code' => 1000,
            'info' => 'success',
            'data' => $data
        ];

        return response()->json($retData);
    }
}
