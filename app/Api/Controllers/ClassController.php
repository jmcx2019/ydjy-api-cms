<?php

namespace App\Api\Controllers;

use App\ClassSchedule;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ClassController extends Controller
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
        if ($homepage = $request->input('homepage')) {
            $data = ClassSchedule::where('status', '启用')->orderBy('id')->paginate($count);
        } else {
            $data = ClassSchedule::where('status', '启用')->where('homepage_view', '1')->orderBy('id')->paginate($count);
        }

        $retData = [
            'code' => 1000,
            'info' => 'success',
            'data' => $data
        ];

        return response()->json($retData);
    }
}
