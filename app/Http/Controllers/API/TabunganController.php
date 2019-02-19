<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Tabungan;
use Validator;

class TabunganController extends Controller
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
        $data = Tabungan::all();

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
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $validator = Validator::make($request->all(), [
            'atas_nama' => 'required',
            'rekening' => 'required',
            'nama_bank' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'status' => 400,
                'message' => 'Failed',
                'error' => $validator->errors(), 
            ], 400);
        }

        $data = $request->only(['atas_nama', 'rekening', 'nama_bank']);
        $tagihan = Tabungan::create($data);

        return response()->json([
            'status' => $this->successStatus,
            'message' => 'Success',
        ]);
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
