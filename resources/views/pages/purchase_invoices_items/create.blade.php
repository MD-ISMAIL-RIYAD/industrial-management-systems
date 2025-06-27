@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create PurchaseInvoicesItem</h3>
                <a href="{{ route('purchase_invoices_items.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div>    
    <form action="{{ route('purchase_invoices_items.store') }}" method="POST" enctype="multipart/form-data">
        @include('pages.purchase_invoices_items._form', ['mode' => 'create', 'purchaseInvoicesItem' => new App\Models\PurchaseInvoicesItem])
    </form>
@endsection