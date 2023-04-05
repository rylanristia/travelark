<?php

namespace App\Http\Controllers;

use App\Models\TripPackage;
use App\Http\Requests\StoreTripPackageRequest;
use App\Http\Requests\UpdateTripPackageRequest;

class TripPackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $data = TripPackage::with('user', 'destination', 'guide')->get();
            foreach ($data as $key => $value) {

                $dataTransform[] = [
                    "id" => $value->id,
                    "created_by" => $value->user->fullname,
                    "type" => $value->type,
                    "destination_id" =>$value->destination->name,
                    "guide_id" => $value->guide->name,
                    "duration" =>  $value->duration,
                    "price" => $value->price
                ];
            }
            return response()->json([
                "message" => "success",
                'statusCode' => 200,
                "data" => $dataTransform,
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                "message" => $th->getMessage(),
                'statusCode' => 400,
                "data" => null
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
     * @param  \App\Http\Requests\StoreTripPackageRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTripPackageRequest $request)
    {
        try {
            $isValidateData = $request->validate([
                "created_by" => 'required|numeric',
                "type" => 'required',
                "destination_id" => 'required',
                "guide_id" => 'required',
                "duration" => 'required',
                "price" => 'required|min:3|max:100',
            ]);
            TripPackage::create($isValidateData);
            return response()->json([
                "message" => "success",
                'statusCode' => 200,
                "data" => $isValidateData,
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                "message" => $th->getMessage(),
                'statusCode' => 400,
                "data" => null
            ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TripPackage  $tripPackage
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
         $checkData  = TripPackage::find($id);
        if (!$checkData == []) {
            $setData = [
                    "id" => $checkData->id,
                    "created_by" => $checkData->user->fullname,
                    "type" => $checkData->type,
                    "destination_id" =>$checkData->destination->name,
                    "guide_id" => $checkData->guide->name,
                    "duration" =>  $checkData->duration,
                    "price" => $checkData->price
            ];
            return response()->json([
                "message" => "success",
                'statusCode' => 200,
                "data" => $setData
            ]);
        } else {
            return response()->json([
                "message" => 'error data tidak di temukan',
                'statusCode' => 404,
                "data" => null
            ]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TripPackage  $tripPackage
     * @return \Illuminate\Http\Response
     */
    public function edit(TripPackage $tripPackage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateTripPackageRequest  $request
     * @param  \App\Models\TripPackage  $tripPackage
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTripPackageRequest $request, $id)
    {
        try {
            $isValidateData = $request->validate([
               "created_by" => 'required|numeric',
                "type" => 'required',
                "destination_id" => 'required',
                "guide_id" => 'required',
                "duration" => 'required',
                "price" => 'required|min:3|max:100',
            ]);
            $getData = TripPackage::find($id);
            $getData->created_by = $isValidateData["created_by"];
            $getData->type = $isValidateData["type"];
            $getData->destination_id = $isValidateData["destination_id"];
            $getData->guide_id = $isValidateData["guide_id"];
            $getData->duration = $isValidateData["duration"];         
            $getData->price = $isValidateData["price"];
            $getData->save();
            return response()->json([
                "message" => "success",
                'statusCode' => 200,
                "data" => $isValidateData,
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                "message" => $th->getMessage(),
                'statusCode' => 400,
                "data" => null
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TripPackage  $tripPackage
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         try {
            $getData = TripPackage::find($id);
            TripPackage::where('id', $id)->delete();
            return response()->json([
                "message" => "success",
                'statusCode' => 200,
                'data' => $getData
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                "message" => $th->getMessage(),
                'statusCode' => 400,
                'data' => null
            ]);
        }
    }
}