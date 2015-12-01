$(document).on('page:load ready', function() {

  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.ajax({
      url: '/products?search=' + searchValue,
      type: 'GET',
      dataType: 'html',
      success: function(data) {
        $('#products').html(data)
      }
    });
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
