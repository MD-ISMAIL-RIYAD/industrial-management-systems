<?php

use App\Http\Controllers\Api\BomController;
use App\Http\Controllers\Api\MoneyReceiptController;
use App\Http\Controllers\Api\PurchaseController;
use App\Http\Controllers\Api\SupplierController;
use App\Models\MoneyReceipt;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::apiResource('purchases', PurchaseController::class);
Route::apiResource('money_receipts', MoneyReceiptController::class);
Route::apiResource('boms', BomController::class);
Route::apiResource('supplier', SupplierController::class);
