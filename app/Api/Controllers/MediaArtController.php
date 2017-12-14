<?php

namespace App\Api\Controllers;

use App\MediaArt;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MediaArtController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        if($request->input('id') === null) {
            $data = MediaArt::where('status', '启用')->orderBy('id')->get();
        } else {
            $id = $request->input('id');
            $data = MediaArt::find($id);
        }

        $retData = [
            'code' => 1000,
            'info' => 'success',
            'data' => $data
        ];

        return response()->json($retData);
    }
}
