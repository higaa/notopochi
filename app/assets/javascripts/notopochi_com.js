$(document).ready( function(){

	// 着いたボタンを押したとき
	// 徒歩
	$( "#btn_getoff_walk" ).click(function(){
		navigator.geolocation.getCurrentPosition(
			function(position){

				// 時間を設定する
				$( '#hidden_getoff_time' ).val( $.now() );

				// 緯度、経度を設定する
				$( '#hidden_getoff_latitude' ).val( position.coords.latitude );
				$( '#hidden_getoff_longitude' ).val( position.coords.longitude );

				// 手段を設定する
				$( '#hidden_getoff_vehicle' ).val( 'walk' );

				$( '#formtravelinggetoff' ).submit();
			}
		);
	});

	// バス
	$( "#btn_getoff_bus" ).click(function(){
		navigator.geolocation.getCurrentPosition(
			function(position){

				// 時間を設定する
				$( '#hidden_getoff_time' ).val( $.now() );

				// 緯度、経度を設定する
				$( '#hidden_getoff_latitude' ).val( position.coords.latitude );
				$( '#hidden_getoff_longitude' ).val( position.coords.longitude );

				// 手段を設定する
				$( '#hidden_getoff_vehicle' ).val( 'bus' );

				$( '#formtravelinggetoff' ).submit();
			}
		);
	});


	// 電車
	$( "#btn_getoff_train" ).click(function(){
		navigator.geolocation.getCurrentPosition(
			function(position){

				// 時間を設定する
				$( '#hidden_getoff_time' ).val( $.now() );

				// 緯度、経度を設定する
				$( '#hidden_getoff_latitude' ).val( position.coords.latitude );
				$( '#hidden_getoff_longitude' ).val( position.coords.longitude );

				// 手段を設定する
				$( '#hidden_getoff_vehicle' ).val( 'train' );

				$( '#formtravelinggetoff' ).submit();
			}
		);
	});

	// タクシー
	$( "#btn_getoff_taxi" ).click(function(){
		navigator.geolocation.getCurrentPosition(
			function(position){

				// 時間を設定する
				$( '#hidden_getoff_time' ).val( $.now() );

				// 緯度、経度を設定する
				$( '#hidden_getoff_latitude' ).val( position.coords.latitude );
				$( '#hidden_getoff_longitude' ).val( position.coords.longitude );

				// 手段を設定する
				$( '#hidden_getoff_vehicle' ).val( 'taxi' );

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
