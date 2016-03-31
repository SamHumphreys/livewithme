$(document).ready(function() {




$('.listingSearch').on("click", function() {
  var suburb = "." + $('.select').val();
  $('.All').hide();
  $(suburb).show();
});

$('.showlistings').on('click', function() {

  $('.own').toggle();

  if ( $('.showlistings').text() === 'Click here to see your listings.' ) {
    $('.showlistings').html('Click here to see your details.');
  } else {
    $('.showlistings').html('Click here to see your listings.');
  }
});









});
