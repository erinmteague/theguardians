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

// Disappearing Frogs
	$('#arrow1').delay(2270);
	$('#arrow1').fadeIn();

	$('#arrow1').on('click', function(){
		$('#videopage').hide();
		$('#page11').show();
		$('#p11line1').fadeIn(1000);
		$('#chico1').fadeIn(1500);
		$('#bottomtxt').delay(2000);
		$('#bottomtxt').fadeIn(1000);
	});

	$('#bottomtxt').on('click', function(){
		$('#page11').hide();
		$('#page12').show();
		$('#p12line1').delay(1500);
		$('#p12line1').fadeIn(1000);
		$('#p12line2').delay(3000);
		$('#p12line2').fadeIn(1000);
		$('#lawn1, #lawn2, #sickfrog, #pesticides').delay(3500);
		$('#lawn1, #lawn2, #sickfrog, #pesticides').fadeIn(1000);
		$('#arrow2').delay(3500);
		$('#arrow2').fadeIn(1000);
	});

	$('#arrow2').on('click', function(){
		$('#page12').hide();
		$('#page13').show();
		$('#p13line1').delay(1000);
		$('#p13line1').fadeIn(1000);
		$('#p13line2').delay(2000);
		$('#p13line2').fadeIn(1000);
		$('#p13bx').delay(2500);
		$('#p13bx').fadeIn(1000);
		$('#arrow3').delay(2500);
		$('#arrow3').fadeIn(1000);
	});

$('#arrow3').on('click', function(){
		$('#page13').hide();
		$('#page14').show();
		$('#p14line1').delay(1000);
		$('#p14line1').fadeIn(1000);
		$('#p14line2').delay(2000);
		$('#p14line2').fadeIn(1000);
		$('#trash5, #trash6').delay(2500);
		$('#trash5, #trash6').fadeIn(1000);
		$('#trash5').on('click', function(){
			$(this).hide();
		});
	});

$('#trash6').on('click', function(){
		$('#page14').hide();
		$('#page15').show();
		$('#p15line1').delay(1000);
		$('#p15line1').fadeIn(1000);
		$('#p15line2').delay(2000);
		$('#p15line2').fadeIn(1000);
		$('#pond5, #frog6, #arrow4').delay(2500);
		$('#pond5, #frog6, #arrow4').fadeIn(1000);
});

$('#arrow4').on('click', function(){
		$('#page15').hide();
		$('#page16').show();
		$('#p16line1').delay(1000);
		$('#p16line1').fadeIn(1000);
		$('#p16line2').delay(2000);
		$('#p16line2').fadeIn(1000);
		$('#p16line3').delay(2300);
		$('#p16line3').fadeIn(1000);
		$('#chico2, #teddy2, #wangari2, #rachel2, #jaques2, #arrow5').delay(2500);
		$('#chico2, #teddy2, #wangari2, #rachel2, #jaques2, #arrow5').fadeIn(1000);
	});

$('#arrow5').on('click', function(){
		$('#page16').hide();
		$('#page17').show();
		$('#p17line1, #inputbx, #arrow6').delay(1000);
		$('#p17line1, #inputbx, #arrow6').fadeIn(1000);
	});

$('#arrow6').on('click', function(){
		$('#page17').hide();
		$('#page18').show();
		$('#p18line1, #p18line2, .finish').delay(1000);
		$('#p18line1, #p18line2, .finish').fadeIn(1000);
	});


});