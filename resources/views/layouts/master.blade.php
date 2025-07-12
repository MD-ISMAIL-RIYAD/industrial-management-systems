@include("layouts.header")

<main class="main" id="top">
  <div class="container" data-layout="container">
    <script>
      var isFluid = JSON.parse(localStorage.getItem('isFluid'));
      if (isFluid) {
        var container = document.querySelector('[data-layout]');
        container.classList.remove('container');
        container.classList.add('container-fluid');
      }
    </script>
    @include("layouts.sidebar")

    <div class="content">
      @include("layouts.topbar")

      @yield("page")

      <footer class="footer">
        <div class="row g-0 justify-content-between fs--1 mt-4 mb-3">
          <div class="col-12 col-sm-auto text-center">
            <p class="mb-0 text-600">Thank you for creating with Intellect <span class="d-none d-sm-inline-block">|
              </span><br class="d-sm-none" /> 2022 &copy; <a href="https://Intellect.com">Intellect</a></p>
          </div>
          <div class="col-12 col-sm-auto text-center">
            <p class="mb-0 text-600">v3.14.0</p>
          </div>
        </div>
      </footer>
    </div>

    @include("layouts.modal")
  </div> <!--Container-->
</main>


@include("layouts.footer")