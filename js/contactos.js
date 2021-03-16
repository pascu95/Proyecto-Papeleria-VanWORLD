  /*---For Login and Sign-up----------------------------*/
  $(document).on('click', '.contact,.already-account', function() {
      $('.form2').addClass('login-active').removeClass('sign-up-active');
  });

  $(document).on('click', '.contactos', function() {
      $('.form2').addClass('sign-up-active').removeClass('login-active');
  });

  $(document).on('click', '.form-cancel', function() {
      $('.form2').removeClass('login-active').removeClass('sign-up-active');
  });



  /*----Full Page Slider---------------*/

  $(document).ready(function() {
      $('#adaptive').lightSlider({
          adaptiveHeight: true,
          auto: true,
          item: 1,
          slideMargin: 0,
          loop: true
      });
  });

  /*--For-Product-SLider----------------*/
  $(document).ready(function() {
      $('#autoWidth').lightSlider({
          autoWidth: true,
          loop: true,
          onSliderLoad: function() {
              $('#autoWidth').removeClass('cS-hidden');
          }
      });
  });

  /*--For-make-Menu-responsive------------*/
  $(document).ready(function() {
      $('.toggle').click(function() {
          $('.toggle').toggleClass('active'),
              $('.navigation').toggleClass('active')
      });
  });