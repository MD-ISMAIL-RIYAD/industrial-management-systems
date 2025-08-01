@extends('layouts.master')
@section('page')
<!-- Page Header -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Purchase Order - Food and Beverage Manufacturing</title>
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
            margin-top: -55px;
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

<body >
    <div class="invoice-container">
        <div class="header-bg"></div>

        <div class="invoice-content">
            <div class="row invoice-header align-items-center">
                <div class="col-md-8" style="margin-top: 30px;">
                    <h2 class="invoice-title">Create Bom</h2>
                    <p class="project-name mb-0">Food & Beverage Manufacturing In.</p>
                    <div class="invoice-details">
                        <p class="mb-0">BOM NO: <span id="bom-id" class="fw-bold">{{$newBomId}}</span></p>
                    </div>
                </div>
            </div>

            <hr class="my-4">

            <h4 class="mb-3 text-primary">Order Details </h4>
            <!-- <div class="d-flex justify-content-between align-items-center">
                <h4 class="mb-3 text-primary">Order Details </h4>
                <select name="status-id" id="status-id" class="form-select w-25">
                    <option value="1">Pending</option>
                    <option value="2">Shipped</option>
                    <option value="3">Delivered</option>
                    <option value="4">Cancelled</option>
                </select>
            </div> -->


            <!-- inputs -->
            <div class="d-flex align-items-center gap-2 my-4">
    <div style="flex: 1;">
        <p class="m-0">Item</p>
        <select name="item-id" id="item-id" class="form-select">
            <option value="">Select Bom Item</option>
            @foreach($raw_materials as $product)
                <option value="{{ $product->product_id }}">{{ $product->product_name }}</option>
            @endforeach
        </select>
    </div>
    
    <div style="flex: 1;">
        <label class="m-0">Unit</label><br>
        <select name="unit_id" id="unit_id" class="form-select">
            <option value="">Select Unit</option>
            @foreach($units as $unit)
                <option value="{{ $unit->id }}">{{ $unit->name }}</option>
            @endforeach
        </select>
    </div>

    <div style="flex: 1;">
        <label class="m-0" for="price">Price</label><br>
        <input type="number" name="price" class="form-control" id="price">
    </div>
    <div style="flex: 1;">
        <label class="m-0" for="qty">Qty</label><br>
        <input type="number" name="qty" class="form-control" id="qty">
    </div>

    <div>
        <label class="m-0"></label><br>
        <button id="add-item" class="btn btn-primary">Add</button>
    </div>
</div>

            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Qty</th>
                            <th class="text-center">Actions</th>
                            <th class="text-end">Total</th>
                        </tr>
                    </thead>
                    <tbody id="order-items-body">

                    </tbody>
                </table>
            </div>

            <div class="row mt-4">
                <div class="col-md-6">
                    <div>
                        <label for="bom_name">Bom Name</label> <br>
                        <input type="text" name="bom_name" id="bom_name" class="form-control w-50" placeholder="Bom Name">
                    </div>
                    <div class="contact-info">
                        <h5 class="text-primary">CONTACT US</h5>
                        <p><i class="bi bi-phone"></i> 01879865517</p>
                        <p><i class="bi bi-globe"></i> <a href="http://www.riyad.intelsofts.com" class="text-decoration-none text-dark">www.riyad.intelsofts.com</a></p>
                        <p><i class="bi bi-geo-alt"></i> 812/ A, Middle Monipur, Mirpur, Dhaka-1216</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="totals-summary p-3">
                        <div class="row mb-2">
                            <div class="col-6 text-end">Subtotal:</div>
                            <div class="col-6 text-end" id="subtotal-amount">$0</div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-6 text-end">Labour Cost:</div>
                            <div class="col-6 d-flex justify-content-end">
                                <input type="number" id="labour-cost" class="form-control w-50 text-end" placeholder="$0">
                            </div>
                        </div>
                        <div class="row total-row">
                            <div class="col-6 text-end">TOTAL:</div>
                            <div class="col-6 text-end pe-0">$<span id="total-amount">000</span></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-md-6">
                    
                        <div class="d-flex justify-content-end mt-4">
                            <button id="save-btn" class="btn btn-primary">Save</button>
                        </div>
                </div>
                <div class="col-md-6">
                    <div class="thank-you">
                        <h2>Riyad</h2>
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
    // const BASE_URL=document.dataset.base-url;
    let items = [];
    document.getElementById('add-item').addEventListener('click', () => {
        const itemEl = document.getElementById('item-id');
        const item_id = itemEl.value;
        const item_name = itemEl.options[itemEl.selectedIndex].text;
        const unit_id=document.getElementById('unit_id').value;
        const qty = document.getElementById('qty').value;
        const price = document.getElementById('price').value;
        // const vat = document.getElementById('vat').value;
        // const discount = document.getElementById('discount').value;
        const item = {
            item_id,
            item_name,
            unit_id,
            qty: parseFloat(qty),
            price: parseFloat(price),
        }
        items.push(item);
        showItems();
        console.log(items);
    });

    //show items
    function showItems() {
        const labourCost = document.getElementById('labour-cost').value;
        const tbody = document.getElementById('order-items-body');
        tbody.innerHTML = '';
        let lineTotal = 0;
        let subtotal = 0;
        let total=0;
        items.forEach((item, index) => {
            const tr = document.createElement('tr');
            lineTotal = (item.qty * item.price);
            subtotal += lineTotal;
            document.getElementById('subtotal-amount').textContent = '$' + subtotal;
            tr.innerHTML = `
                <td>${item.item_name}</td>
                <td>$${item.price}</td>
                <td>${item.qty}</td>
                <td class="text-center">
                    <button onclick="removeItem(${index})" class="btn btn-sm btn-danger">
                        <i class="fa fa-trash"></i>
                    </button>
                </td>
                <td class="text-end">$${lineTotal}</td>

                `;
            tbody.appendChild(tr);
        });
        total=subtotal+parseFloat(labourCost);
        document.getElementById('total-amount').textContent=total;
    }

    //handel special discount
    const labourCost = document.getElementById('labour-cost');
    labourCost.addEventListener('input', () => {
        const fullSubtotal = document.getElementById('subtotal-amount').textContent;
        const subtotalArr = fullSubtotal.split('$');
        const subtotal = subtotalArr[1];
        const subtotalNum = parseFloat(subtotal);
        const labourConstNum = parseFloat(labourCost.value);
        let total = subtotalNum + labourConstNum;
        document.getElementById('total-amount').textContent = total;
    })


    //remove items
    function removeItem(i) {
        items.splice(i, 1);
        showItems();
    }

    //save purchase
    document.getElementById('save-btn').addEventListener('click', async () => {

        const bom_no = document.getElementById('bom-id').textContent;
        const labour_cost=document.getElementById('labour-cost').value;
        const bom_total = document.getElementById('total-amount').textContent;
        const bom_name=document.getElementById('bom_name').value;

        const payload = {
            bom_no,
            bom_name,
            labour_cost,
            bom_total,
            items
        }
        try {
            const response = await fetch(`http://127.0.0.1:8000/api/boms`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                },
                body: JSON.stringify(payload)
            });

            if (!response.ok) {
                throw new Error(`Server error: ${response.status}`);
            }

            const result = await response.json();
            console.log('Purchase created:', result);
            alert('Bom created successfully!');

            //redirect to the index page
            window.location.assign("{{ route('boms.index') }}");

        } catch (error) {
            console.error('Failed to create Bom:', error);
            alert('Error creating Bom.');
        }
        console.log(payload);

    });
</script>

</html>

@endsection