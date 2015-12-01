$(document).on('page:load ready', function() {

  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.getScript('/products?search=' + searchValue);

    // $.get('/products?search=' + searchValue)
    //   .done(function(data) {
    //     console.log(data);
    //     $('#products').html(data);
    //   });

    // $.ajax({
    //   url: '/products?search=' + searchValue,
    //   type: 'GET',
    //   dataType: 'html',
    //   success: function(data) {
    //     $('#products').html(data)
    //   }
    // });
  });

  $('#send-ajax-request').on('click', function() {
    $.ajax({
      url: '/products/ajax',
      type: 'GET',
      dataType: 'html',
      success: function(data) {
        $('#ajax-response').html(data)
      }
    });
  });

});
