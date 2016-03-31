$(document).ready(function() {

  $('.listingSearch').on("click", function() {
    var suburb = "." + $('.select').val();
    $('.All').hide();
    $(suburb).show();
  });

  $('.showlistings').on('click', function() {
    var listings = "Click to see your listings.";
    var details = "Click to see your details.";
    $('.own').toggle();
    if ( $('.showlistings').text() === listings ) {
      $('.showlistings').html(details);
    } else if ( $('.showlistings').text() === details ) {
      $('.showlistings').html(listings);
    }
  });

});
