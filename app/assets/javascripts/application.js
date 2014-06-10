// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery_nested_form
//= require_tree .
//= require bootstrap
//= require app
//= require btn-effects
//= require checkout
//= require circles-master
//= require comment
//= require contact
//= require datepicker
//= require form-sliders
//= require index
//= require login
//= require masking
//= require order
//= require owl-carousel
//= require page_contacts
//= require page_portfolio
//= require reg
//= require review
//= require validation
//= require vector-map
//= require jquery.flexslider
//= require modernizr
//= require jquery.cslider
//= require twitter/bootstrap

$(function() {
  return $('#contact-submit').on("click", function(e) {
    var body, email, url;
    e.preventDefault();
    $('#contact-submit').val("Sending Message...");
    url = '/home/contact';
    email = $('#contact-email').val();
    body = $('#contact-body').val();
    $.ajax({
      type: "POST",
      url: url,
      data: {
        'email': email,
        'body': body
      }
    });
    return false;
  });
});
