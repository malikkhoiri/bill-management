<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Tagihan;
use Validator;

class TagihanController extends Controller
{
    public $successStatus = 200;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = Tagihan::all();

        if(count($data) > 0){ //mengecek apakah data kosong atau tidak
            return response()->json([
                'status' => $this->successStatus,
                'message' => 'Success',
                'data' => $data,
            ]);
        }
        else{
            return response()->json([
                'status' => $this->successStatus,
                'message' => 'Data Empty',
            ]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
        $validator = Validator::make($request->all(), [
            'nama_tag' => 'required',
            'total_tag' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'status' => 400,
                'message' => 'Failed',
                'error' => $validator->errors(), 
            ], 400);
        }

        $data = $request->only(['nama_tag', 'total_tag', 'description_tag', 'status_tag']);
        $data['description_tag'] = $request->description_tag != null ? $request->description_tag : null; 
        $tagihan = Tagihan::create($data);

        return response()->json([
            'status' => $this->successStatus,
            'message' => 'Success',
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
