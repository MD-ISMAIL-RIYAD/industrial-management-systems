<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('pages.dashboard.home');
});

Route::resource('manufacturers', App\Http\Controllers\ManufacturerController::class);
Route::resource('bom_finished_goods', App\Http\Controllers\BomFinishedGoodController::class);
Route::resource('boms', App\Http\Controllers\BomController::class);
Route::resource('productions', App\Http\Controllers\ProductionController::class);
Route::resource('production_details', App\Http\Controllers\ProductionDetailController::class);