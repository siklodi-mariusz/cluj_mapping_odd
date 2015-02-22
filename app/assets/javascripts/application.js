// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require leaflet
//= require chosen-jquery
//= require_tree .

var map = L.map('map-canvas').setView([46.76, 23.58], 12);
L.tileLayer('http://{s}.tiles.mapbox.com/v4/siklodi-mariusz.l9c99jhj/{z}/{x}/{y}.png?access_token=pk.eyJ1Ijoic2lrbG9kaS1tYXJpdXN6IiwiYSI6IjJfRnM1Z1EifQ.Mx4nSC0znQ6zS6MgGsrXSw', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    maxZoom: 18
}).addTo(map);
// var marker = L.marker([46.750929, 23.52099599999997]).addTo(map);
// marker.bindPopup("<b>Hello world!</b><br>I am a popup.");

var rooms = $('.room-body');

rooms.each(function() {
  var lat = $($(this).find(':input')[0]).val();
  var lon = $($(this).find(':input')[1]).val();
  var marker = L.marker([lat, lon]).addTo(map);
  marker.bindPopup("<b>Hello world!</b><br>I am a popup.");
});


var ready = function() {

  $('.chosen-select').chosen({
     no_results_text: 'No results matched'
 });




}


$('document').ready(ready);
/* Page load is what turbo links will trigger. */
$(document).on('page:load', ready);
