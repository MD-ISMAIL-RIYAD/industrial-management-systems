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
            <p class="mb-0 text-600"> <span class="d-none d-sm-inline-block">Food & Beverage Manufacturing In.</span><br class="d-sm-none" /> &copy; {{ now()->year}}||<span class="d-none d-sm-inline-block">ALL RIGHTS RESERVED</span><br class="d-sm-none" /> <span class="d-inline-block d-sm-none">Food & Beverage Manufacturing In. </span><span class="d-none d-sm-inline-block">Created with❤️by</span> <a href="http://riyad.intelsofts.com/">@RIYAD</a>
              </span><br class="d-sm-none" />
            <!-- <div class="col-12 col-sm-auto text-center"></div> -->
              <p class="mb-0 text-600"></p>
          </div>
      </footer>
    </div>

    @include("layouts.modal")
  </div> <!--Container-->
</main>


@include("layouts.footer")