<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('pages.dashboard.home');
});

Route::resource('bom_finished_goods', App\Http\Controllers\BomFinishedGoodController::class);
Route::resource('boms', App\Http\Controllers\BomController::class);
Route::resource('bom_row_materials', App\Http\Controllers\BomRowMaterialController::class);
Route::resource('productions', App\Http\Controllers\ProductionController::class);
Route::resource('production_details', App\Http\Controllers\ProductionDetailController::class);
Route::resource('customers', App\Http\Controllers\CustomerController::class);
Route::resource('employees', App\Http\Controllers\EmployeeController::class);
Route::resource('products', App\Http\Controllers\ProductController::class);
Route::resource('inventory_movements', App\Http\Controllers\InventoryMovementController::class);
Route::resource('invoices', App\Http\Controllers\InvoiceController::class);
Route::resource('invoice_detials', App\Http\Controllers\InvoiceDetialController::class);
Route::resource('jobs', App\Http\Controllers\JobController::class);
Route::resource('manufacturers', App\Http\Controllers\ManufacturerController::class);
Route::resource('money_receipts', App\Http\Controllers\MoneyReceiptController::class);
Route::resource('money_receipt_details', App\Http\Controllers\MoneyReceiptDetailController::class);
Route::resource('orders', App\Http\Controllers\OrderController::class);
Route::resource('order_details', App\Http\Controllers\OrderDetailController::class);
Route::resource('positions', App\Http\Controllers\PositionController::class);
Route::resource('product_units', App\Http\Controllers\ProductUnitController::class);
Route::resource('product_types', App\Http\Controllers\ProductTypeController::class);
Route::resource('purchases', App\Http\Controllers\PurchaseController::class);
Route::resource('purchase_details', App\Http\Controllers\PurchaseDetailController::class);
Route::resource('stocks', App\Http\Controllers\StockController::class);
Route::resource('stock_adjustments', App\Http\Controllers\StockAdjustmentController::class);
Route::resource('stock_adjustment_details', App\Http\Controllers\StockAdjustmentDetailController::class);
Route::resource('stock_adjustment_types', App\Http\Controllers\StockAdjustmentTypeController::class);
Route::resource('suppliers', App\Http\Controllers\SupplierController::class);
Route::resource('vendors', App\Http\Controllers\VendorController::class);
Route::resource('sections', App\Http\Controllers\SectionController::class);
Route::resource('product_sections', App\Http\Controllers\ProductSectionController::class);
Route::resource('uoms', App\Http\Controllers\UomController::class);
Route::resource('products', App\Http\Controllers\ProductController::class);
Route::resource('suppliers_payments', App\Http\Controllers\SuppliersPaymentController::class);
Route::resource('purchase_invoices', App\Http\Controllers\PurchaseInvoiceController::class);
Route::resource('purchase_invoice_items', App\Http\Controllers\PurchaseInvoiceItemController::class);
Route::resource('sales_invoices', App\Http\Controllers\SalesInvoiceController::class);
Route::resource('sales_invoice_items', App\Http\Controllers\SalesInvoiceItemController::class);
Route::resource('purchase_invoices_items', App\Http\Controllers\PurchaseInvoicesItemController::class);
Route::resource('purchase_invoice_items', App\Http\Controllers\PurchaseInvoiceItemController::class);
Route::resource('sales_invoices_items', App\Http\Controllers\SalesInvoicesItemController::class);
Route::resource('items', App\Http\Controllers\ItemController::class);
Route::resource('warehouses', App\Http\Controllers\WarehouseController::class);
Route::resource('product_categories', App\Http\Controllers\ProductCategoryController::class);
Route::resource('bom_raw_materials', App\Http\Controllers\BomRawMaterialController::class);
