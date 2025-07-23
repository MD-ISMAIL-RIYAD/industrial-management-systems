  <a class="nav-link dropdown-indicator" href="#inventory" role="button"
    data-bs-toggle="collapse" aria-expanded="false" aria-controls="inventory">
    <div class="d-flex align-items-center"><span class="nav-link-icon"><span
          class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">Inventory</span>
    </div>
  </a>
  <ul class="nav collapse" id="inventory">


    <!-- <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#items" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="inventory">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item Master</span>
        </div>
      </a>
     
      <ul class="nav collapse" id="items">
        <li class="nav-item"><a class="nav-link" href="{{url('items/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create items</span>
            </div>
          </a>
        
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('items')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Bom</span>
            </div>
          </a>
         
        </li>


      </ul>
    </li> -->





    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#warehouses" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Warehouse</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="warehouses">
        <li class="nav-item"><a class="nav-link" href="{{url('warehouses/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Warehouse</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('warehouses')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Warehouse</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>

    </li>

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#stocks" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Stock</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="stocks">
        <li class="nav-item"><a class="nav-link" href="{{url('stocks/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Stock</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('stocks')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Stock</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('stocks/balance')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Stock Balance</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#stock_adjustments" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Stock Adjustments</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="stock_adjustments">
        <li class="nav-item"><a class="nav-link" href="{{url('stock_adjustments/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create New Stock</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('stock_adjustments')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Stock</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#inventory_movements" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="inventory">
        <div class="d-flex align-center"><span class="nav-link-text ps-1">Inventory Movements</span>
        </div>
      </a>

      <ul class="nav collapse" id="inventory_movements">
        <li class="nav-item"><a class="nav-link" href="{{url('inventory_movements/create')}}">
            <div class="d-flex align-center"><span class="nav-link-text ps-1">Create New</span>
            </div>
          </a>

        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('inventory_movements')}}">
            <div class="d-flex align-center"><span class="nav-link-text ps-1">Manage</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>

    </li>

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#uoms" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Units of Measure</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="uoms">
        <li class="nav-item"><a class="nav-link" href="{{url('uoms/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">New UOM</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('uoms')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage UOM</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>

  </ul>