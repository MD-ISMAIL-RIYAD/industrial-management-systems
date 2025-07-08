@extends('layouts.master')
@section('page')
<!-- Page Header -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Invoice - Food and Beverage Manufacturing</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
        }

        .invoice-container {
            max-width: 900px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            position: relative;
            overflow: hidden;
            /* Important for angled backgrounds */
        }

        /* Angled background sections */
        .header-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 180px;
            /* Adjust height as needed */
            overflow: hidden;
            z-index: 1;
        }

        .header-bg::before {
            content: '';
            position: absolute;
            top: -35px;
            left: 0;
            width: 70%;
            height: 250px;
            background-color: #0d47a1;
            transform: skewY(-8deg);
            transform-origin: top left;
            z-index: 2;
        }

        .header-bg::after {
            content: '';
            position: absolute;
            top: 0;
            /* Adjust to control the angle start */
            right: 0;
            /* Adjust to control the angle start */
            width: 50%;
            /* Covers the right side */
            height: 200px;
            /* Extends beyond the height */
            background-color: #ff8c00;
            /* Orange */
            transform: skewY(12deg);
            /* Angle for the orange section */
            transform-origin: top right;
            z-index: 3;
        }

        /* Ensure content is above the angled backgrounds */
        .invoice-content {
            position: relative;
            z-index: 10;
        }

        .invoice-header {
            color: #fff;
            padding: 20px;
            position: relative;
            /* For z-index to work */
            z-index: 10;
            /* Ensure text is above angles */
            margin-bottom: 30px;
            margin-top: -70px;
        }

        .invoice-title {
            font-size: 2rem;
            font-weight: 700;
            color: #fff;
            /* Ensure text is white */
            margin-bottom: 5px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }

        .project-name {
            font-size: 1.2rem;
            color: #f0f0f0;
            margin-bottom: 5px;
        }

        .invoice-details {
            color: #fff;
            font-size: 0.9rem;
        }

        .invoice-to {
            text-align: right;
            color: #333;
            margin-top: 20px;
            padding-right: 20px;
        }

        .invoice-to h5 {
            font-weight: 600;
            color: #0d47a1;
            /* Dark blue */
        }

        .table thead {
            background-color: #0d47a1;
            /* Dark blue */
            color: #fff;
        }

        .table thead th {
            border-bottom: none;
        }

        /* Make 'Id' and 'Order_date' column headers purple */


        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.03);
        }

        .table tfoot tr {
            background-color: #f0f0f0;
            font-weight: 600;
        }

        .payment-details,
        .totals-summary {
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
        }

        .totals-summary {
            background-color: #e3f2fd;
            /* Light blue background for totals */
            border: 1px solid #bbdefb;
        }

        .totals-summary .row {
            margin-bottom: 5px;
        }

        .totals-summary .total-row {
            background-color: #0d47a1;
            /* Dark blue for total */
            color: #fff;
            padding: 10px 15px;
            border-radius: 5px;
            margin-top: 15px;
            font-size: 1.3rem;
            font-weight: 700;
        }

        .contact-info {
            margin-top: 30px;
            color: #555;
        }

        .contact-info i {
            color: #0d47a1;
            /* Dark blue icon */
            margin-right: 10px;
        }

        .thank-you {
            text-align: right;
            margin-top: 40px;
            color: #0d47a1;
        }

        .thank-you h2 {
            font-family: 'Brush Script MT', cursive;
            /* A script-like font */
            font-size: 3.5rem;
            font-weight: normal;
        }

        .signature {
            border-top: 1px solid #ccc;
            width: 150px;
            margin-left: auto;
            margin-top: 20px;
        }

        .administrator-text {
            text-align: right;
            margin-top: 5px;
            font-size: 0.9rem;
            color: #666;
        }
    </style>
</head>

<body>
    <div class="invoice-container">
        <div class="header-bg"></div>

        <div class="invoice-content">
            <div class="row invoice-header align-items-center">
                <div class="col-md-8" style="margin-top: 30px;">
                    <h1 class="invoice-title">ORDER INVOICE</h1>
                    <p class="project-name">Food and Beverage Manufacturing</p>
                    <div class="invoice-details">
                        <p>INVOICE NO: <span id="invoice-id">{{$newPurchaseId}}</span></p>
                        <p>Current Date: <span id="current-date">July 07, 2025</span></p>
                    </div>
                </div>
                <div class="col-md-4 invoice-to d-flex justify-content-end flex-column " style="min-width: 180px;">
                    <p class="mb-1 fw-bold text-light">Invoice to</p>
                    <select name="customer" id="customer-id" class="form-select w-75 align-self-end mb-1">
                        @foreach($customers as $customer)
                            <option value="{{$customer->id}}">{{$customer->name}}</option>
                        @endforeach
                    </select>
                    <p id="customer-email" class="mb-0">hello@reallygreatsite.com</p>
                    <p id="shipping-address">123 Anywhere St, Any City, ST 12345</p>
                </div>
            </div>

            <hr class="my-4">

            <h4 class="mb-3 text-primary">Order Details</h4>

            <!-- inputs -->
            <div class="d-flex align-items-center gap-2 my-4">
                <div style="min-width: 180px;">
                    <p class="m-0">Product</p>
                    <select name="product-id" id="product-id" class="form-select">
                        <option value="">Select Product</option>
                        @foreach($products as $product)
                        <option value="{{$product->id}}">{{$product->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div>
                    <label class="m-0" for="price">Price</label><br>
                    <input type="number" name="price" class="form-control" id="price">
                </div>
                <div>
                    <label class="m-0" for="qty">Qty</label><br>
                    <input type="number" name="qty" class="form-control" id="qty">
                </div>
                <div>
                    <label class="m-0" for="vat">Vat</label><br>
                    <input type="number" name="vat" class="form-control" id="vat">
                </div>
                <div>
                    <label class="m-0" for="discount">Discount</label><br>
                    <input type="number" name="discount" class="form-control" id="discount">
                </div>
                <button id="add-item" class="btn btn-primary mt-3">Add</button>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Qty</th>
                            <th>VAT</th>
                            <th>Discount</th>
                            <th>Total</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="order-items-body">

                    </tbody>
                </table>
            </div>

            <div class="row mt-4">
                <div class="col-md-6">
                    <div class="payment-details">
                        <h5 class="text-primary">PAYMENT DETAILS:</h5>
                        <p><strong>Bank Code:</strong> 123-456-7890</p>
                        <p><strong>Bank Name:</strong> Fauget Bank</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="totals-summary p-3">
                        <div class="row mb-2">
                            <div class="col-6 text-end">Subtotal:</div>
                            <div class="col-6 text-end" id="subtotal-amount">$16,320.00</div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-6 text-end">Tax:</div>
                            <div class="col-6 text-end" id="tax-amount">$163.00</div>
                        </div>
                        <div class="row total-row">
                            <div class="col-6 text-end">TOTAL:</div>
                            <div class="col-6 text-end" id="total-amount">$16,483.00</div>
                        </div>
                        <div class="d-flex justify-content-end mt-4">
                            <button id="save-btn" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-md-6">
                    <div class="contact-info">
                        <h5 class="text-primary">CONTACT US</h5>
                        <p><i class="bi bi-phone"></i> 01879865517</p>
                        <p><i class="bi bi-globe"></i> <a href="http://www.riyad.intelsofts.com" class="text-decoration-none text-dark">www.riyad.intelsofts.com</a></p>
                        <p><i class="bi bi-geo-alt"></i> 812/ A, Middle Monipur, Mirpur, Dhaka-1216</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="thank-you">
                        <h2>Thank You!</h2>
                        <div class="signature"></div>
                        <p class="administrator-text">Administrator</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>

<section>

</section>
<script>
    let items = [];
    document.getElementById('add-item').addEventListener('click', () => {
        const productEl = document.getElementById('product-id');
        const product_id = productEl.value;
        const product_name = productEl.options[productEl.selectedIndex].text;
        const qty = document.getElementById('qty').value;
        const price = document.getElementById('price').value;
        const vat = document.getElementById('vat').value;
        const discount = document.getElementById('discount').value;
        const item = {
            product_id,
            product_name,
            qty,
            price,
            vat,
            discount
        }
        items.push(item);
        showItems();
        console.log(items);
    });

    //show items
    function showItems() {
        const tbody = document.getElementById('order-items-body');
        tbody.innerHTML = '';
        items.forEach((item, index) => {
            const tr = document.createElement('tr');
            tr.innerHTML = `
                <td>${item.product_name}</td>
                <td>$${item.price}</td>
                <td>${item.qty}</td>
                <td>$${item.vat}</td>
                <td>$${item.discount}</td>
                <td>$${item.qty*item.price}</td>
                <td>
                    <button onclick="removeItem(${index})" class="btn btn-sm btn-danger">
                        <i class="fa fa-trash"></i>
                    </button>
                </td>

                `;
            tbody.appendChild(tr);
        });
    }


    //remove items
    function removeItem(i) {
        items.splice(i, 1);
        showItems();
    }
    
    //save purchase
    document.getElementById('save-btn').addEventListener('click', () => {
        alert('Successfully Saved!');
        items = [];
        showItems();
        window.location.assign("{{ route('purchases.index') }}");
    });
</script>

</html>

@endsection