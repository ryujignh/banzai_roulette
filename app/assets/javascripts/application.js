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
//= require_tree .

// function create_player_circle(no_players) {
//   var x_center = $(".center_marker").position().left;
//   var y_center = $(".center_marker").position().top;
//   var items = no_players;
//   var r = x_center/2
//   for(var i = 0; i < items; i++) {
//     var x = x_center + r * Math.cos(2 * Math.PI * i / items);
//     var y = y_center + r * Math.sin(2 * Math.PI * i / items);   
//     var player_outer_wrapper = $("<div/>",{"class":"player_outer_wrapper", "id":i});
//     $(player_outer_wrapper).css("top", y + "px").css("left", x + "px");;
//     var player_wrapper = $("<div/>",{"class":"player_wrapper"});
//     var player_caption = $("<p/>", {"text":'Join', "class":"player_caption"});
//     $(player_outer_wrapper).append(player_wrapper).append(player_caption);
//     $("#player_circle").append(player_outer_wrapper);
//   };
// };

// function load_player_circle(uid,id,current_user_id, player_no) {
//   var player_outer_wrapper  = $("#" + player_no)
//   var player_wrapper = $(player_outer_wrapper).find(".player_wrapper"); 
//   var player_img = $("<img/>", {"src":"https://graph.facebook.com/" + uid + "/picture?type=large", "class":"player_img"});
//   $(player_wrapper).append(player_img)

// };

//   $(window).bind('resize', function(e)
//   {
//     console.log('window resized..');
//     $( ".player_outer_wrapper" ).remove();
//     player_circle()
//   });

//setTimeout(function () {
//  window.location = window.location
//}, 3000);


// $(document).ready(function () {


// $('#post_giphy').on("click", function() {
//   var word = 'test'
//   var url = "//api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=";
//   var gif_url = (url + word);
//   var result = $.getJSON(gif_url);
//   var giphy_url = result.done(function(data) { return (data.data.image_original_url); });


//   callExecuter(giphy_url)
//   function callExecuter(giphy_url){
//       $.ajax({
//         type:"PUT",
//         url:"/games/post_giphy?url='" + giphy_url + "'",
//         success:function(){
//         //I assume you want to do something on controller action execution success?
//         console.log('success!');
//         }
//       });
//     }
//   });
// });


