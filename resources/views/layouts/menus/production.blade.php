  <a class="nav-link dropdown-indicator" href="#production" role="button"
    data-bs-toggle="collapse" aria-expanded="false" aria-controls="production">
    <div class="d-flex align-items-center"><span class="nav-link-icon"><span
          class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">Production</span>
    </div>
  </a>
  <ul class="nav collapse" id="production">

    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#bom" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">BoM</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="bom">
        <li class="nav-item"><a class="nav-link" href="{{url('boms/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Bom</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('boms')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Bom</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#production_planning" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Production Planning</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="production_planning">
        <li class="nav-item"><a class="nav-link" href="{{url('productions/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Production Plan</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('productions')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Production Plan</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#Production_order" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Production Orders</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="Production_order">
        <li class="nav-item"><a class="nav-link" href="{{url('Production_orders/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Order</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('Production_orders')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Order</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>
    </li>


    <!-- <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#section" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Sections</span>
        </div>
      </a>

      <ul class="nav collapse" id="section">
        <li class="nav-item"><a class="nav-link" href="{{url('sections/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create New</span>
            </div>
          </a>

        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('sections')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Sections </span>
            </div>
          </a>
        </li>


      </ul>
    </li> -->




    <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#unit" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Units</span>
        </div>
      </a>
      <!-- more inner pages-->
      <ul class="nav collapse" id="unit">
        <li class="nav-item"><a class="nav-link" href="{{url('units/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Order</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('units')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Order</span>
            </div>
          </a>
          <!-- more inner pages-->
        </li>


      </ul>

    </li>


    <!-- <li class="nav-item">
      <a class="nav-link dropdown-indicator" href="#table" data-bs-toggle="collapse"
        aria-expanded="false" aria-controls="production">
        <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Tables</span>
        </div>
      </a>

      <ul class="nav collapse" id="table">
        <li class="nav-item"><a class="nav-link" href="{{url('tables/create')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Order</span>
            </div>
          </a>

        </li>
        <li class="nav-item"><a class="nav-link" href="{{url('tables')}}">
            <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Order</span>
            </div>
          </a>

        </li>


      </ul>
    </li> -->

  </ul>