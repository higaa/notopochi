$(document).ready( function(){
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

	$( "#start_gps" ).click(function(){
		alert("現在地取得中");
		navigator.geolocation.getCurrentPosition(
			function(position){
				$('#latitude').html(position.coords.latitude); //緯度
				$('#longitude').html(position.coords.longitude); //経度
			}
		);
	});
});
