$(document).ready( function(){

	// 目的地についたボタンを押したとき
	$( "#btn_arrive" ).click(function(){
		var nowTime = $.now();
		$('<input>').attr({
			type: 'hidden',
			name: 'time' ,
			value: nowTime 
		}).appendTo('#formtravelingarrive' );
	});

	// 着いたボタンを押したとき
	$( "#btn_getoff" ).click(function(){
		navigator.geolocation.getCurrentPosition(
			function(position){

				// 時間を設定する
				$( '#hidden_getoff_time' ).val( $.now() );

				// 緯度、経度を設定する
				$( '#hidden_getoff_latitude' ).val( position.coords.latitude );
				$( '#hidden_getoff_longitude' ).val( position.coords.longitude );
				$( '#formtravelinggetoff' ).submit();
			}
		);
	});

});
