<nav class="navbar navbar-light navbar-vertical navbar-expand-xl">
        <script>
          var navbarStyle = localStorage.getItem("navbarStyle");
          if (navbarStyle && navbarStyle !== 'transparent') {
            document.querySelector('.navbar-vertical').classList.add(`navbar-${navbarStyle}`);
          }
        </script>
        <div class="d-flex align-items-center">
          <div class="toggle-icon-wrapper">

            <button class="btn navbar-toggler-humburger-icon navbar-vertical-toggle" data-bs-toggle="tooltip"
              data-bs-placement="left" title="Toggle Navigation"><span class="navbar-toggle-icon"><span
                  class="toggle-line"></span></span></button>

          </div>
          <a class="navbar-brand" href="/">
            <div class="d-flex align-items-center py-3"><img class="me-2"
                src="assets/img/icons/spot-illustrations/Intellect.png" alt="" width="40" /><span
                class="font-sans-serif">Intellect</span>
            </div>
          </a>
        </div>
        <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
          <div class="navbar-vertical-content scrollbar">
            <ul class="navbar-nav flex-column mb-3" id="navbarVerticalNav">            
              <li class="nav-item">           
             
                <!-- parent pages-->
                 @include("layouts.menus.inventory")
                <!-- parent pages-->
                 @include("layouts.menus.invoice")
                <!-- parent pages-->
                 {{-- @include("layouts.menus.ecommerce") --}}
                 
                <!-- parent pages-->
                @include("layouts.menus.elearning")

                <!-- parent pages-->
                 <a class="nav-link" href="app/kanban.html" role="button">
                  <div class="d-flex align-items-center"><span class="nav-link-icon"><span
                        class="fab fa-trello"></span></span><span class="nav-link-text ps-1">Kanban</span>
                  </div>
                </a>
                <!-- parent pages-->
                 <a class="nav-link dropdown-indicator" href="#social" role="button"
                  data-bs-toggle="collapse" aria-expanded="false" aria-controls="social">
                  <div class="d-flex align-items-center"><span class="nav-link-icon"><span
                        class="fas fa-share-alt"></span></span><span class="nav-link-text ps-1">Social</span>
                  </div>
                </a>
                <ul class="nav collapse" id="social">
                  <li class="nav-item"><a class="nav-link" href="app/social/feed.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Feed</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/social/activity-log.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Activity log</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/social/notifications.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Notifications</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/social/followers.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Followers</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                </ul>
                <!-- parent pages-->
                 <a class="nav-link dropdown-indicator" href="#support-desk" role="button"
                  data-bs-toggle="collapse" aria-expanded="false" aria-controls="support-desk">
                  <div class="d-flex align-items-center"><span class="nav-link-icon"><span
                        class="fas fa-ticket-alt"></span></span><span class="nav-link-text ps-1">Support desk</span>
                  </div>
                </a>
                <ul class="nav collapse" id="support-desk">
                  <li class="nav-item"><a class="nav-link" href="app/support-desk/table-view.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Table view</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/support-desk/card-view.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Card view</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/support-desk/contacts.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Contacts</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/support-desk/contact-details.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Contact details</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/support-desk/tickets-preview.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Tickets preview</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/support-desk/quick-links.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Quick links</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                  <li class="nav-item"><a class="nav-link" href="app/support-desk/reports.html">
                      <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Reports</span>
                      </div>
                    </a>
                    <!-- more inner pages-->
                  </li>
                </ul>
              </li>            
             
            </ul>
            <div class="settings mb-3">
              <div class="card shadow-none">
                <div class="card-body alert mb-0" role="alert">
                  <div class="btn-close-falcon-container">
                    <button class="btn btn-link btn-close-falcon p-0" aria-label="Close"
                      data-bs-dismiss="alert"></button>
                  </div>
                  <div class="text-center"><img src="assets/img/icons/spot-illustrations/navbar-vertical.png" alt=""
                      width="80" />
                    <p class="fs--2 mt-2">Loving what you see? <br />Get your copy of <a href="#!">Intellect</a></p>
                    <div class="d-grid"><a class="btn btn-sm btn-purchase"
                        href="https://themes.getbootstrap.com/product/falcon-admin-dashboard-webapp-template/"
                        target="_blank">Purchase</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </nav>