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
//= require bootstrap-sprockets
//= require_tree .
$(document).ready(function(){

  $('#like').click(function(){
    var id = $(this)[0].getAttribute('goal_id')
    $.ajax('http://localhost:3000/goals/' + id + '/likes',{
      type: 'GET',
      success: function(data){
        var likes = data.likes;
        likes += 1;
        $('#numLikes').html(likes);
        // console.log(likes);
        // console.log('success');
      },
      error: function(data){
        // console.log(data);
        // console.log('error');
      }
    });
  });

  $('#completed').click(function(){
    // var autocomplete = $('input').attr('autocomplete')
    var id = $(this)[0].getAttribute('goal_id')
    $.ajax('http://localhost:3000/goals/' + id + '/completed',{
      type: 'GET',
      success: function(data){
        var completed = data.completed;
        if(completed){
          $('input').attr('autocomplete', 'off')
          console.log('OFF');
          console.log($('input').attr('autocomplete'));
        } else {
          $('input').attr('autocomplete', 'on')
          console.log('ON');
          console.log($('input').attr('autocomplete'));
        }
        // console.log(autocomplete);
      },
      error: function(data){
        // console.log('error');
      }
    });
  });


});
