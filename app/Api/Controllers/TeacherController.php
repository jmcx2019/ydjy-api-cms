<?php

namespace App\Api\Controllers;

use App\Teacher;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TeacherController extends Controller
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
        $data = Teacher::where('status', '启用')->orderBy('id', 'desc')->paginate($count);

        $retData = [
            'code' => 1000,
            'info' => 'success',
            'data' => $data
        ];

        return response()->json($retData);
    }
}
