  <a class="nav-link dropdown-indicator" href="#hr_managment" role="button"
      data-bs-toggle="collapse" aria-expanded="false" aria-controls="hr_managment">
      <div class="d-flex align-items-center"><span class="nav-link-icon"><span
                  class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">HR Management</span>
      </div>
  </a>
  <ul class="nav collapse" id="hr_managment">

      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#employee" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="employee">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Employees</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="employee">
              <li class="nav-item"><a class="nav-link" href="{{url('employees/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Employees</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('employees')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Employees</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>

      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#Department" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="Department">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Departments</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="Department">
              <li class="nav-item"><a class="nav-link" href="{{url('Departments/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Departments</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('Departments')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Employees</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>

      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#Manager" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="Manager">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manager</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="Manager">
              <li class="nav-item"><a class="nav-link" href="{{url('Managers/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Manager</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('Managers')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Manager</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>

      <li class="nav-item">
          <a class="nav-link dropdown-indicator" href="#Payroll" data-bs-toggle="collapse"
              aria-expanded="false" aria-controls="Payroll">
              <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Payroll</span>
              </div>
          </a>
          <!-- more inner pages-->
          <ul class="nav collapse" id="Payroll">
              <li class="nav-item"><a class="nav-link" href="{{url('Payrolls/create')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create Payroll</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>
              <li class="nav-item"><a class="nav-link" href="{{url('Payrolls')}}">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Manage Payroll</span>
                      </div>
                  </a>
                  <!-- more inner pages-->
              </li>


          </ul>
      </li>

  </ul>