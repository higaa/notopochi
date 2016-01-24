$(document).ready( function(){

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

	// 目的地到着ボタンを押したとき
	$( "#btn_arrive" ).click(function(){
		navigator.geolocation.getCurrentPosition(
			function(position){

				// 時間を設定する
				$( '#hidden_arrive_time' ).val( $.now() );

				// 緯度、経度を設定する
				$( '#hidden_arrive_latitude' ).val( position.coords.latitude );
				$( '#hidden_arrive_longitude' ).val( position.coords.longitude );
				$( '#formtravelingarrive' ).submit();
			}
		);
	});
});
