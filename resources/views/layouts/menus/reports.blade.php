  <a class="nav-link dropdown-indicator" href="#report" role="button"
      data-bs-toggle="collapse" aria-expanded="false" aria-controls="report">
      <div class="d-flex align-items-center"><span class="nav-link-icon"><span
                  class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">Reports</span>
      </div>
  </a>
  <ul class="nav collapse" id="report">
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#production_report" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="report">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Production Reports</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="production_report">
              <li class="nav-item"><a class="nav-link" href="{{url('production_reports/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Report</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('production_reports')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Report</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
          </ul>
      </li>

      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#inventory_report" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="inventory_report">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Inventory Reports</span>
              </div>
          </a>
          <!-- more inner pages-->
      </li>
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#sales_report" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="sales_report">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Sales Reports</span>
              </div>
          </a>
          <!-- more inner pages-->
      </li>
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#purchase_report" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="purchase_report">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Purchase Reports</span>
              </div>
          </a>
          <!-- more inner pages-->
      </li>
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#hr_report" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="hr_report">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">HR Reports</span>
              </div>
          </a>
          <!-- more inner pages-->
      </li>
      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#finance_report" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="finance_report">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Finance Reports</span>
              </div>
          </a>
          <!-- more inner pages-->
      </li>
  </ul>