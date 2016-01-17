# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initialize = ->
  #地図のセンターと初期化
  latlng = new (google.maps.LatLng)(35.709984, 139.810703)
  opts = 
    zoom: 6
    center: latlng
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new (google.maps.Map)(document.getElementById('map_canvas'), opts)
  
  #アイコンを使ったマーカー
  latlng = new google.maps.LatLng(35.539001,134.228468)
  
  iconOffset = new (google.maps.Point)(34, 34)
  iconPosition = new (google.maps.Point)(0, 0)
  iconSize = new (google.maps.Size)(34, 50)
  iconShadowSize = new (google.maps.Size)(37, 34)
  iconUrl = '/images/notopon.jpg'
  iconShadowUrl = '/images/notopon.jpg'
  icon = new (google.maps.MarkerImage)(iconUrl, iconSize, iconPosition, iconOffset, iconSize)
  shadow = new (google.maps.MarkerImage)(iconShadowUrl, iconShadowSize, iconPosition, iconOffset, iconShadowSize)
  
  #マーカーのポップウィンドウの作成
  #サンプルはスフィンクス
  mopts = 
    position: latlng,
    map: map
    title:"スフィンクス"
    icon: icon
    shadow: shadow
  marker = new google.maps.Marker(mopts)
  contentString="<dl id='infowin1'><dt>スフィンクス</dt><dd><img src='/images/notopon.jpg' align='left' />スフィンクス（Sphinx）は、エジプト神話やギリシア神話、メソポタミア神話などに登場する、ライオンの身体と人間の顔を持った神聖な存在あるいは怪物。<a href='http://ja.wikipedia.org/wiki/%E3%82%B9%E3%83%95%E3%82%A3%E3%83%B3%E3%82%AF%E3%82%B9'>wikipedia</a>より。</dd></dl>"
  infowindow = new (google.maps.InfoWindow)(content: contentString)

  google.maps.event.addListener marker, 'click', ->
    infowindow.open map,marker
    return
    
  #controllerとerbのデータからマーカーを作成
  i = 0
  while i < arrivedPoints.length
    latlng = new google.maps.LatLng(arrivedPoints[i][0],arrivedPoints[i][1])
    mopts = 
      position: latlng,
      map: map
      title:arrivedNames[i]
      icon: icon
      shadow: shadow
    marker = new google.maps.Marker(mopts)
    i++
  return

#ページ読み込み時
$ ->
  $("div#map_canvas").ready ->
    initialize()

