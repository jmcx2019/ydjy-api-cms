<?php

namespace App\Api\Controllers;

use App\Score;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ScoreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        $count = $request->input('count') === null ? 20 : $request->input('count');
        $data = Score::where('status', '启用')->orderBy('id')->paginate($count);

        $retData = [
            'code' => 1000,
            'info' => 'success',
            'data' => $data
        ];

        return response()->json($retData);
    }
}
