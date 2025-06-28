  <a class="nav-link dropdown-indicator" href="#sales_order" role="button"
      data-bs-toggle="collapse" aria-expanded="false" aria-controls="sales_order">
      <div class="d-flex align-items-center"><span class="nav-link-icon"><span
                  class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">Sales & Order</span>
      </div>
  </a>
  <ul class="nav collapse" id="sales_order">

      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#order" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="order">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Order</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="order">
              <li class="nav-item"><a class="nav-link" href="{{url('orders/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Order</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('orders')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Order</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#sale" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="sale">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Sales</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="sale">
              <li class="nav-item"><a class="nav-link" href="{{url('sales/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Sales</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('sales')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Sales</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#customer" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="customer">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Customers</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="customer">
              <li class="nav-item"><a class="nav-link" href="{{url('customers/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Customers</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('customers')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Customers</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#invoice" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="invoice">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">invoices</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="invoice">
              <li class="nav-item"><a class="nav-link" href="{{url('invoices/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create invoice</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('invoices')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Invoice</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>



  </ul>