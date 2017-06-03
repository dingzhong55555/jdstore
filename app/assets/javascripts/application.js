// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).on('mouseover', '.list-image', function () {
  var src_small = $(this).attr('src') //抓取小图图片路径
  var src_medium = src_small.toString().replace("small", "medium") //更改小图图片路径

  $('.medium-image').attr('src', src_medium) //变更大图图片路径

  $('.list-image').removeClass('list-image-active') //其他小图移除图片阴影
  $(this).addClass('list-image-active') //当前小图新增图片阴影
})

$(window).scroll(function () {
  if ($(this).scrollTop() > 1000) {
    $(".goTop").fadeIn(100);
  } else {
    $(".goTop").fadeOut(200);
  }

  $(".goTop").click(
    function() {
      $('html,body').animate({
          scrollTop: 0
      }, 700);
    });
})
