@extends('layouts.master')
@section('page')
  <div class="page-inner">
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Stock</h3>
                <a href="{{ route('stocks.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div>    

    <div class="card">
        <table class="table">
            <tr>
                <th>ID</th>
                <th>Product</th>
                <th>Product Type</th>
                <th>Quantity</th>
            </tr>

            @foreach($groupedStocks as $stock)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $stock['product_name'] }} -Id:{{ $stock['product_id'] }}</td>
                <td>{{ $stock['product_type'] }}</td>
                <td>{{ $stock['qty'] }}</td>
            </tr>
            @endforeach

        </table>
    </div>
</div>
@endsection