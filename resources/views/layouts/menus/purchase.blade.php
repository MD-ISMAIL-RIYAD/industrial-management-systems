  <a class="nav-link dropdown-indicator" href="#purchase" role="button"
    data-bs-toggle="collapse" aria-expanded="false" aria-controls="purchase">
    <div class="d-flex align-items-center"><span class="nav-link-icon"><span
          class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">Purchase</span>
    </div>
  </a>
  <ul class="nav collapse" id="purchase">
    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#purchase_order" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1"> Orders</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="purchase_order">
        <li class="nav-item"><a class="nav-link" href="{{url('purchases/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create New Orders</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('purchases')}}">
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


      <ul class="nav collapse" id="suppliers">
        <li class="nav-item"><a class="nav-link" href="{{url('suppliers/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Suppliers</span>
            </div>
          </a>

        </li>


        <li class="nav-item"><a class="nav-link" href="{{url('suppliers')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Suppliers</span>
            </div>
          </a>

        </li>

      </ul>
    </li>
    <!-- <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#invoice" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Invoices</span>
        </div>
      </a>

     
      <ul class="nav collapse" id="invoice">
        <li class="nav-item"><a class="nav-link" href="{{url('invoices/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">New Invoices</span>
            </div>
          </a>
    
        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('invoices')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Invoices </span>
            </div>
          </a>
 
        </li>

      </ul>
    </li> -->

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#purchase_returns" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="purchase">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1"> Returns</span>
        </div>
      </a>


      <ul class="nav collapse" id="purchase_returns">
        <li class="nav-item"><a class="nav-link" href="{{url('purchase_returns/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Return Product</span>
            </div>
          </a>

        </li>

        <li class="nav-item"><a class="nav-link" href="{{url('purchase_returns')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Adjusment Product </span>
            </div>
          </a>

        </li>

      </ul>

    </li>

  </ul>