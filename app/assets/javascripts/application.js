// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

// Drop Down Menu
	$('.dropdown').on('click', function(){
		$('.dropdown-content').show();
		$('.dropdown-content').delay(2000);
		$('.dropdown-content').slideUp();
	});

// Lesson Map Drop Downs
	$('#flag1').on('click', function(){
		$('#f1box1').show();
		$('#f1box1').delay(5000);
		$('#f1box1').slideUp();
	});

	$('#flag2').on('click', function(){
		$('#f2box2').show();
		$('#f2box2').delay(5000);
		$('#f2box2').slideUp();
	});

	$('#flag3').on('click', function(){
		$('#f3box3').show();
		$('#f3box3').delay(5000);
		$('#f3box3').slideUp();
	});

	$('#flag4').on('click', function(){
		$('#f4box4').show();
		$('#f4box4').delay(5000);
		$('#f4box4').slideUp();
	});

	$('#flag5').on('click', function(){
		$('#f5box5').show();
		$('#f5box5').delay(5000);
		$('#f5box5').slideUp();
	});

	$('#flag6').on('click', function(){
		$('#f6box6').show();
		$('#f6box6').delay(5000);
		$('#f6box6').slideUp();
	});

// Add Class Form

	$('#addclassbtn').on('click', function(){
		$('#addclasscontent').show();
		$('#addclasscontent').delay(8000);
		$('addclasscontent').hide();
	});

});