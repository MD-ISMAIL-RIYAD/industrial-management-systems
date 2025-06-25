@extends("layouts.master")

@section("page")

<div class="row g-3 mb-3">
          <div class="col-md-6 col-xxl-3">
            <div class="card h-md-100 ecommerce-card-min-width">
              <div class="card-header pb-0">
                <h6 class="mb-0 mt-2 d-flex align-items-center">Weekly Sales<span class="ms-1 text-400" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Calculated according to last week's sales" data-bs-original-title="Calculated according to last week's sales"><svg class="svg-inline--fa fa-question-circle fa-w-16" data-fa-transform="shrink-1" aria-hidden="true" focusable="false" data-prefix="far" data-icon="question-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.9375, 0.9375)  rotate(0 0 0)"><path fill="currentColor" d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 448c-110.532 0-200-89.431-200-200 0-110.495 89.472-200 200-200 110.491 0 200 89.471 200 200 0 110.53-89.431 200-200 200zm107.244-255.2c0 67.052-72.421 68.084-72.421 92.863V300c0 6.627-5.373 12-12 12h-45.647c-6.627 0-12-5.373-12-12v-8.659c0-35.745 27.1-50.034 47.579-61.516 17.561-9.845 28.324-16.541 28.324-29.579 0-17.246-21.999-28.693-39.784-28.693-23.189 0-33.894 10.977-48.942 29.969-4.057 5.12-11.46 6.071-16.666 2.124l-27.824-21.098c-5.107-3.872-6.251-11.066-2.644-16.363C184.846 131.491 214.94 112 261.794 112c49.071 0 101.45 38.304 101.45 88.8zM298 368c0 23.159-18.841 42-42 42s-42-18.841-42-42 18.841-42 42-42 42 18.841 42 42z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="far fa-question-circle" data-fa-transform="shrink-1"></span> Font Awesome fontawesome.com --></span></h6>
              </div>
              <div class="card-body d-flex flex-column justify-content-end">
                <div class="row">
                  <div class="col">
                    <p class="font-sans-serif lh-1 mb-1 fs-4">$47K</p><span class="badge badge-soft-success rounded-pill fs--2">+3.5%</span>
                  </div>
                  <div class="col-auto ps-0">
                    <div class="echart-bar-weekly-sales h-100" style="user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative;" _echarts_instance_="ec_1748059297405"><div style="position: relative; width: 136px; height: 61px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;"><canvas data-zr-dom-id="zr_0" width="170" height="76" style="position: absolute; left: 0px; top: 0px; width: 136px; height: 61px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div class="" style="position: absolute; display: block; border-style: solid; white-space: nowrap; z-index: 9999999; box-shadow: rgba(0, 0, 0, 0.2) 1px 2px 10px; background-color: rgb(249, 250, 253); border-width: 1px; border-radius: 4px; color: rgb(11, 23, 39); font: 14px / 21px &quot;Microsoft YaHei&quot;; padding: 7px 10px; top: 0px; left: 0px; transform: translate3d(-5px, -20px, 0px); border-color: rgb(216, 226, 239); pointer-events: none; visibility: hidden; opacity: 0;">Mon : 200</div></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xxl-3">
            <div class="card h-md-100">
              <div class="card-header pb-0">
                <h6 class="mb-0 mt-2">Total Order</h6>
              </div>
              <div class="card-body d-flex flex-column justify-content-end">
                <div class="row justify-content-between">
                  <div class="col-auto align-self-end">
                    <div class="fs-4 fw-normal font-sans-serif text-700 lh-1 mb-1">58.4K</div><span class="badge rounded-pill fs--2 bg-200 text-primary"><svg class="svg-inline--fa fa-caret-up fa-w-10 me-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-up" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M288.662 352H31.338c-17.818 0-26.741-21.543-14.142-34.142l128.662-128.662c7.81-7.81 20.474-7.81 28.284 0l128.662 128.662c12.6 12.599 3.676 34.142-14.142 34.142z"></path></svg><!-- <span class="fas fa-caret-up me-1"></span> Font Awesome fontawesome.com -->13.6%</span>
                  </div>
                  <div class="col-auto ps-0 mt-n4">
                    <div class="echart-default-total-order" data-echarts="{&quot;tooltip&quot;:{&quot;trigger&quot;:&quot;axis&quot;,&quot;formatter&quot;:&quot;{b0} : {c0}&quot;},&quot;xAxis&quot;:{&quot;data&quot;:[&quot;Week 4&quot;,&quot;Week 5&quot;,&quot;Week 6&quot;,&quot;Week 7&quot;]},&quot;series&quot;:[{&quot;type&quot;:&quot;line&quot;,&quot;data&quot;:[20,40,100,120],&quot;smooth&quot;:true,&quot;lineStyle&quot;:{&quot;width&quot;:3}}],&quot;grid&quot;:{&quot;bottom&quot;:&quot;2%&quot;,&quot;top&quot;:&quot;2%&quot;,&quot;right&quot;:&quot;10px&quot;,&quot;left&quot;:&quot;10px&quot;}}" data-echart-responsive="true" _echarts_instance_="ec_1748059297410" style="user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative;"><div style="position: relative; width: 138px; height: 90px; padding: 0px; margin: 0px; border-width: 0px;"><canvas data-zr-dom-id="zr_0" width="172" height="112" style="position: absolute; left: 0px; top: 0px; width: 138px; height: 90px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div class=""></div></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xxl-3">
            <div class="card h-md-100">
              <div class="card-body">
                <div class="row h-100 justify-content-between g-0">
                  <div class="col-5 col-sm-6 col-xxl pe-2">
                    <h6 class="mt-1">Market Share</h6>
                    <div class="fs--2 mt-3">
                      <div class="d-flex flex-between-center mb-1">
                        <div class="d-flex align-items-center"><span class="dot bg-primary"></span><span class="fw-semi-bold">Samsung</span></div>
                        <div class="d-xxl-none">33%</div>
                      </div>
                      <div class="d-flex flex-between-center mb-1">
                        <div class="d-flex align-items-center"><span class="dot bg-info"></span><span class="fw-semi-bold">Huawei</span></div>
                        <div class="d-xxl-none">29%</div>
                      </div>
                      <div class="d-flex flex-between-center mb-1">
                        <div class="d-flex align-items-center"><span class="dot bg-300"></span><span class="fw-semi-bold">Apple</span></div>
                        <div class="d-xxl-none">20%</div>
                      </div>
                    </div>
                  </div>
                  <div class="col-auto position-relative">
                    <div class="echart-market-share" _echarts_instance_="ec_1748059297406" style="user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative;"><div style="position: relative; width: 106px; height: 106px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;"><canvas data-zr-dom-id="zr_0" width="132" height="132" style="position: absolute; left: 0px; top: 0px; width: 106px; height: 106px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div class=""></div></div>
                    <div class="position-absolute top-50 start-50 translate-middle text-dark fs-2">26M</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xxl-3">
            <div class="card h-md-100">
              <div class="card-header d-flex flex-between-center pb-0">
                <h6 class="mb-0">Weather</h6>
                <div class="dropdown font-sans-serif btn-reveal-trigger">
                  <button class="btn btn-link text-600 btn-sm dropdown-toggle dropdown-caret-none btn-reveal" type="button" id="dropdown-weather-update" data-bs-toggle="dropdown" data-boundary="viewport" aria-haspopup="true" aria-expanded="false"><svg class="svg-inline--fa fa-ellipsis-h fa-w-16 fs--2" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="ellipsis-h" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M328 256c0 39.8-32.2 72-72 72s-72-32.2-72-72 32.2-72 72-72 72 32.2 72 72zm104-72c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72zm-352 0c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72z"></path></svg><!-- <span class="fas fa-ellipsis-h fs--2"></span> Font Awesome fontawesome.com --></button>
                  <div class="dropdown-menu dropdown-menu-end border py-2" aria-labelledby="dropdown-weather-update"><a class="dropdown-item" href="#!">View</a><a class="dropdown-item" href="#!">Export</a>
                    <div class="dropdown-divider"></div><a class="dropdown-item text-danger" href="#!">Remove</a>
                  </div>
                </div>
              </div>
              <div class="card-body pt-2">
                <div class="row g-0 h-100 align-items-center">
                  <div class="col">
                    <div class="d-flex align-items-center"><img class="me-3" src="assets/img/icons/weather-icon.png" alt="" height="60">
                      <div>
                        <h6 class="mb-2">New York City</h6>
                        <div class="fs--2 fw-semi-bold">
                          <div class="text-warning">Sunny</div>Precipitation: 50%
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-auto text-center ps-2">
                    <div class="fs-4 fw-normal font-sans-serif text-primary mb-1 lh-1">31°</div>
                    <div class="fs--1 text-800">32° / 25°</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row g-0">
          <div class="col-lg-6 pe-lg-2 mb-3">
            <div class="card h-lg-100 overflow-hidden">
              <div class="card-header bg-light">
                <div class="row align-items-center">
                  <div class="col">
                    <h6 class="mb-0">Running Projects</h6>
                  </div>
                  <div class="col-auto text-center pe-x1">
                    <select class="form-select form-select-sm">
                      <option>Working Time</option>
                      <option>Estimated Time</option>
                      <option>Billable Time</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="card-body p-0">
                <div class="row g-0 align-items-center py-2 position-relative border-bottom border-200">
                  <div class="col ps-x1 py-1 position-static">
                    <div class="d-flex align-items-center">
                      <div class="avatar avatar-xl me-3">
                        <div class="avatar-name rounded-circle bg-soft-primary text-dark"><span class="fs-0 text-primary">F</span></div>
                      </div>
                      <div class="flex-1">
                        <h6 class="mb-0 d-flex align-items-center"><a class="text-800 stretched-link" href="#!">Intellect</a><span class="badge rounded-pill ms-2 bg-200 text-primary">38%</span>
                        </h6>
                      </div>
                    </div>
                  </div>
                  <div class="col py-1">
                    <div class="row flex-end-center g-0">
                      <div class="col-auto pe-2">
                        <div class="fs--1 fw-semi-bold">12:50:00</div>
                      </div>
                      <div class="col-5 pe-x1 ps-2">
                        <div class="progress bg-200 me-2" style="height: 5px;">
                          <div class="progress-bar rounded-pill" role="progressbar" style="width: 38%" aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row g-0 align-items-center py-2 position-relative border-bottom border-200">
                  <div class="col ps-x1 py-1 position-static">
                    <div class="d-flex align-items-center">
                      <div class="avatar avatar-xl me-3">
                        <div class="avatar-name rounded-circle bg-soft-success text-dark"><span class="fs-0 text-success">R</span></div>
                      </div>
                      <div class="flex-1">
                        <h6 class="mb-0 d-flex align-items-center"><a class="text-800 stretched-link" href="#!">Reign</a><span class="badge rounded-pill ms-2 bg-200 text-primary">79%</span></h6>
                      </div>
                    </div>
                  </div>
                  <div class="col py-1">
                    <div class="row flex-end-center g-0">
                      <div class="col-auto pe-2">
                        <div class="fs--1 fw-semi-bold">25:20:00</div>
                      </div>
                      <div class="col-5 pe-x1 ps-2">
                        <div class="progress bg-200 me-2" style="height: 5px;">
                          <div class="progress-bar rounded-pill" role="progressbar" style="width: 79%" aria-valuenow="79" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row g-0 align-items-center py-2 position-relative border-bottom border-200">
                  <div class="col ps-x1 py-1 position-static">
                    <div class="d-flex align-items-center">
                      <div class="avatar avatar-xl me-3">
                        <div class="avatar-name rounded-circle bg-soft-info text-dark"><span class="fs-0 text-info">B</span></div>
                      </div>
                      <div class="flex-1">
                        <h6 class="mb-0 d-flex align-items-center"><a class="text-800 stretched-link" href="#!">Boots4</a><span class="badge rounded-pill ms-2 bg-200 text-primary">90%</span>
                        </h6>
                      </div>
                    </div>
                  </div>
                  <div class="col py-1">
                    <div class="row flex-end-center g-0">
                      <div class="col-auto pe-2">
                        <div class="fs--1 fw-semi-bold">58:20:00</div>
                      </div>
                      <div class="col-5 pe-x1 ps-2">
                        <div class="progress bg-200 me-2" style="height: 5px;">
                          <div class="progress-bar rounded-pill" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row g-0 align-items-center py-2 position-relative border-bottom border-200">
                  <div class="col ps-x1 py-1 position-static">
                    <div class="d-flex align-items-center">
                      <div class="avatar avatar-xl me-3">
                        <div class="avatar-name rounded-circle bg-soft-warning text-dark"><span class="fs-0 text-warning">R</span></div>
                      </div>
                      <div class="flex-1">
                        <h6 class="mb-0 d-flex align-items-center"><a class="text-800 stretched-link" href="#!">Raven</a><span class="badge rounded-pill ms-2 bg-200 text-primary">40%</span></h6>
                      </div>
                    </div>
                  </div>
                  <div class="col py-1">
                    <div class="row flex-end-center g-0">
                      <div class="col-auto pe-2">
                        <div class="fs--1 fw-semi-bold">21:20:00</div>
                      </div>
                      <div class="col-5 pe-x1 ps-2">
                        <div class="progress bg-200 me-2" style="height: 5px;">
                          <div class="progress-bar rounded-pill" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row g-0 align-items-center py-2 position-relative">
                  <div class="col ps-x1 py-1 position-static">
                    <div class="d-flex align-items-center">
                      <div class="avatar avatar-xl me-3">
                        <div class="avatar-name rounded-circle bg-soft-danger text-dark"><span class="fs-0 text-danger">S</span></div>
                      </div>
                      <div class="flex-1">
                        <h6 class="mb-0 d-flex align-items-center"><a class="text-800 stretched-link" href="#!">Slick</a><span class="badge rounded-pill ms-2 bg-200 text-primary">70%</span></h6>
                      </div>
                    </div>
                  </div>
                  <div class="col py-1">
                    <div class="row flex-end-center g-0">
                      <div class="col-auto pe-2">
                        <div class="fs--1 fw-semi-bold">31:20:00</div>
                      </div>
                      <div class="col-5 pe-x1 ps-2">
                        <div class="progress bg-200 me-2" style="height: 5px;">
                          <div class="progress-bar rounded-pill" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer bg-light p-0"><a class="btn btn-sm btn-link d-block w-100 py-2" href="#!">Show all
                  projects<svg class="svg-inline--fa fa-chevron-right fa-w-10 ms-1 fs--2" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg><!-- <span class="fas fa-chevron-right ms-1 fs--2"></span> Font Awesome fontawesome.com --></a></div>
            </div>
          </div>
          <div class="col-lg-6 ps-lg-2 mb-3">
            <div class="card h-lg-100">
              <div class="card-header">
                <div class="row flex-between-center">
                  <div class="col-auto">
                    <h6 class="mb-0">Total Sales</h6>
                  </div>
                  <div class="col-auto d-flex">
                    <select class="form-select form-select-sm select-month me-2">
                      <option value="0">January</option>
                      <option value="1">February</option>
                      <option value="2">March</option>
                      <option value="3">April</option>
                      <option value="4">May</option>
                      <option value="5">Jun</option>
                      <option value="6">July</option>
                      <option value="7">August</option>
                      <option value="8">September</option>
                      <option value="9">October</option>
                      <option value="10">November</option>
                      <option value="11">December</option>
                    </select>
                    <div class="dropdown font-sans-serif btn-reveal-trigger">
                      <button class="btn btn-link text-600 btn-sm dropdown-toggle dropdown-caret-none btn-reveal" type="button" id="dropdown-total-sales" data-bs-toggle="dropdown" data-boundary="viewport" aria-haspopup="true" aria-expanded="false"><svg class="svg-inline--fa fa-ellipsis-h fa-w-16 fs--2" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="ellipsis-h" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M328 256c0 39.8-32.2 72-72 72s-72-32.2-72-72 32.2-72 72-72 72 32.2 72 72zm104-72c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72zm-352 0c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72z"></path></svg><!-- <span class="fas fa-ellipsis-h fs--2"></span> Font Awesome fontawesome.com --></button>
                      <div class="dropdown-menu dropdown-menu-end border py-2" aria-labelledby="dropdown-total-sales"><a class="dropdown-item" href="#!">View</a><a class="dropdown-item" href="#!">Export</a>
                        <div class="dropdown-divider"></div><a class="dropdown-item text-danger" href="#!">Remove</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-body h-100 pe-0">
                <!-- Find the JS file for the following chart at: src\js\charts\echarts\total-sales.js-->
                <!-- If you are not using gulp based workflow, you can find the transpiled code at: public\assets\js\theme.js-->
                <div class="echart-line-total-sales h-100" data-echart-responsive="true" _echarts_instance_="ec_1748059297407" style="user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative;"><div style="position: relative; width: 406px; height: 295px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;"><canvas data-zr-dom-id="zr_0" width="507" height="368" style="position: absolute; left: 0px; top: 0px; width: 406px; height: 295px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div class="" style="position: absolute; display: block; border-style: solid; white-space: nowrap; z-index: 9999999; box-shadow: rgba(0, 0, 0, 0.2) 1px 2px 10px; background-color: rgb(249, 250, 253); border-width: 1px; border-radius: 4px; color: rgb(11, 23, 39); font: 14px / 21px &quot;Microsoft YaHei&quot;; padding: 7px 10px; top: 0px; left: 0px; transform: translate3d(0px, -5px, 0px); border-color: rgb(216, 226, 239); pointer-events: none; visibility: hidden; opacity: 0;">Jan 5, 60</div></div>
              </div>
            </div>
          </div>
        </div>
        <div class="row g-0">
          <div class="col-lg-6 col-xl-7 col-xxl-8 mb-3 pe-lg-2 mb-3">
            <div class="card h-lg-100">
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="mb-3 text-800">Using Storage <strong class="text-dark">1775.06 MB </strong>of 2 GB</h6>
                  <div class="progress mb-3 rounded-3" style="height: 10px;">
                    <div class="progress-bar bg-progress-gradient border-end border-white border-2" role="progressbar" style="width: 43.72%" aria-valuenow="43.72" aria-valuemin="0" aria-valuemax="100"></div>
                    <div class="progress-bar bg-info border-end border-white border-2" role="progressbar" style="width: 18.76%" aria-valuenow="18.76" aria-valuemin="0" aria-valuemax="100"></div>
                    <div class="progress-bar bg-success border-end border-white border-2" role="progressbar" style="width: 9.38%" aria-valuenow="9.38" aria-valuemin="0" aria-valuemax="100"></div>
                    <div class="progress-bar bg-200" role="progressbar" style="width: 28.14%" aria-valuenow="28.14" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="row fs--1 fw-semi-bold text-500 g-0">
                    <div class="col-auto d-flex align-items-center pe-3"><span class="dot bg-primary"></span><span>Regular</span><span class="d-none d-md-inline-block d-lg-none d-xxl-inline-block">(895MB)</span></div>
                    <div class="col-auto d-flex align-items-center pe-3"><span class="dot bg-info"></span><span>System</span><span class="d-none d-md-inline-block d-lg-none d-xxl-inline-block">(379MB)</span></div>
                    <div class="col-auto d-flex align-items-center pe-3"><span class="dot bg-success"></span><span>Shared</span><span class="d-none d-md-inline-block d-lg-none d-xxl-inline-block">(192MB)</span></div>
                    <div class="col-auto d-flex align-items-center"><span class="dot bg-200"></span><span>Free</span><span class="d-none d-md-inline-block d-lg-none d-xxl-inline-block">(576MB)</span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-xl-5 col-xxl-4 mb-3 ps-lg-2">
            <div class="card h-lg-100">
              <div class="bg-holder bg-card" style="background-image:url(assets/img/icons/spot-illustrations/corner-1.png);">
              </div>
              <!--/.bg-holder-->

              <div class="card-body position-relative">
                <h5 class="text-warning">Running out of your space?</h5>
                <p class="fs--1 mb-0">Your storage will be running out soon. Get more space and powerful productivity
                  features.</p><a class="btn btn-link fs--1 text-warning mt-lg-3 ps-0" href="#!">Upgrade storage<svg class="svg-inline--fa fa-chevron-right fa-w-10 ms-1" data-fa-transform="shrink-4 down-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg="" style="transform-origin: 0.3125em 0.5625em;"><g transform="translate(160 256)"><g transform="translate(0, 32)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z" transform="translate(-160 -256)"></path></g></g></svg><!-- <span class="fas fa-chevron-right ms-1" data-fa-transform="shrink-4 down-1"></span> Font Awesome fontawesome.com --></a>
              </div>
            </div>
          </div>
        </div>

@endsection