$(document).ready( function(){

	var sleepExitFlg = 0;

	// 着いたボタン押したとき
	$( "#btn_getoff" ).click(function(){
		var nowTime = $.now();
		$('<input>').attr({
			type: 'hidden',
			name: 'time' ,
			value: nowTime 
		}).appendTo('#formtravelinggetoff' );
	});

	// 目的地についたボタンを押したとき
	$( "#btn_arrive" ).click(function(){
		var nowTime = $.now();
		$('<input>').attr({
			type: 'hidden',
			name: 'time' ,
			value: nowTime 
		}).appendTo('#formtravelingarrive' );
	});

	$( "#btn_getoff" ).click(function(){
		navigator.geolocation.getCurrentPosition(
			function(position){

				$('#formtravelinggetoff').submit();
			}
		);
	});

});
