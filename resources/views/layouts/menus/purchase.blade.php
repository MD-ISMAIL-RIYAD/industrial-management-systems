  <a class="nav-link dropdown-indicator" href="#purchase" role="button"
    data-bs-toggle="collapse" aria-expanded="false" aria-controls="purchase">
    <div class="d-flex align-items-center"><span class="nav-link-icon"><span
          class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">Purchase</span>
    </div>
  </a>
  <ul class="nav collapse" id="purchase">
    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#purchase_orders" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1"> Orders</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="purchase_orders">
        <li class="nav-item"><a class="nav-link" href="{{url('purchase_orders/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create New Orders</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('purchase_orders')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Orders</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#suppliers" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Suppliers</span>
        </div>
      </a>

      <!-- more inner pages-->
      <ul class="nav collapse" id="suppliers">
        <li class="nav-item"><a class="nav-link" href="{{url('suppliers/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Suppliers</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('suppliers')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Suppliers</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

      </ul>
    </li>

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#invoice" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Invoices</span>
        </div>
      </a>

      <!-- more inner pages-->
      <ul class="nav collapse" id="invoice">
        <li class="nav-item"><a class="nav-link" href="{{url('invoice/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">New Invoices</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('invoice')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Invoices </span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

      </ul>
    </li>

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#purchase_returns" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1"> Returns</span>
        </div>
      </a>

      <!-- more inner pages-->
      <ul class="nav collapse" id="purchase_returns">
        <li class="nav-item"><a class="nav-link" href="{{url('purchase_returns/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Return Product</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('purchase_returns')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Adjusment Product </span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

      </ul>

    </li>
    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#purchase_stock" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Stock</span>
        </div>
      </a>

      <!-- more inner pages-->
      <ul class="nav collapse" id="purchase_stock">
        <li class="nav-item"><a class="nav-link" href="{{url('purchase_stock/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">New Stock</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('purchase_stock')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Stock </span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

      </ul>

    </li>

  </ul>