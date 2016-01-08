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
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  $(".player_outer_wrapper").mouseenter(function() {
    $(this).find( ".player_wrapper" ).animate({"opacity": "0.2"}, 50)
    $(this).find('.player_caption').css("display", "block");
  });

  $(".player_outer_wrapper").mouseleave(function() {
    $(this).find( ".player_wrapper" ).animate({"opacity": "1"}, 50)
    $(this).find('.player_caption').css("display", "none");
  });

  $(window).bind('resize', function(e)
  {
    console.log('window resized..');
    $( ".player_outer_wrapper" ).remove();
    player_circle()
  });

});

function player_circle() {
  var players = [{name: 'Dan Kruse', img: 'https://octodex.github.com/images/saketocat.png'}, {name: 'Ryan Ghana', img: 'https://octodex.github.com/images/mountietocat.png'}, {name: 'Connor Larmour', img: 'https://octodex.github.com/images/saketocat.png'},
  {name: 'Fabien Albi', img: 'https://octodex.github.com/images/carlostocat.gif'}, {name: 'Ren Heart', img: 'https://octodex.github.com/images/maxtocat.gif'}, {name: 'Tom Wang the third from mexico', img: 'https://octodex.github.com/images/foundingfather_v2.png'},
  {name: 'Jenn Tigner', img: 'https://octodex.github.com/images/gangnamtocat.png'},{name: 'Connor Steele', img: 'https://octodex.github.com/images/stormtroopocat.png'}, {name: 'Theo Ng', img: 'https://octodex.github.com/images/homercat.png'}]
  var x_center = $(".center_marker").position().left;
  var y_center = $(".center_marker").position().top;

var items = players.length;
var r = x_center/2
for(var i = 0; i < items; i++) {
    var player = players[i]
    var x = x_center + r * Math.cos(2 * Math.PI * i / items);
    var y = y_center + r * Math.sin(2 * Math.PI * i / items);   
    // $("#player_circle").append("<div class='center_marker2' style='left:"+ x +"px;top:"+ y +"px'><p>'hi'</p></div>");    
    var player_outer_wrapper = $("<div/>",{"class":"player_outer_wrapper"});
    $(player_outer_wrapper).css("top", y + "px").css("left", x + "px");;
    var player_wrapper = $("<div/>",{"class":"player_wrapper"});
    var player_img = $("<img/>", {"src":player.img, "class":"player_img"});
    var player_caption = $("<p/>", {"text":player.name, "class":"player_caption"});
    $(player_wrapper).append(player_img)
    $(player_outer_wrapper).append(player_wrapper).append(player_caption);
    $("#player_circle").append(player_outer_wrapper);

;}}