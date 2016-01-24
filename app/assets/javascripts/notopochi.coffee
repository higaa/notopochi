# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#地図のポップアップウィンドウ作成
addListenerPoint = (m_map, m_marker, m_content) ->
  google.maps.event.addListener m_marker, 'click', ->
    infoWindow = new (google.maps.InfoWindow)(content: m_content)
    infoWindow.open m_map, m_marker
    return
  return

initialize = ->
  #地図のセンターと初期化
  #縮尺は後でboundを使う
  latlng = new (google.maps.LatLng)(36.578055, 136.648654)
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
  
  #controllerとerbのデータからマーカーを作成
  bounds = new (google.maps.LatLngBounds)
  i = 0
  while i < arrivedPoints.length
    latlng = new google.maps.LatLng(arrivedPoints[i][0],arrivedPoints[i][1])
    mopts = 
      position: latlng,
      map: map
      title:arrivedNames[i]
#      icon: icon
#      shadow: shadow
    marker = new google.maps.Marker(mopts)
    contentString="<dl ><dt>"+arrivedNames[i]+"</dt><dd>到着時刻:"+arrivedTimes[i][0]+"時"+("0"+arrivedTimes[i][1]).substr(-2)+"分<p>"+arrivedComments[i]+"</dd></dl>"
    addListenerPoint map, marker, contentString
    
    # もらった地図の緯度・経度取得
    bounds.extend latlng
    # bounds.extend()メソッドでいい感じに縮尺を変えてくれる
    map.fitBounds bounds
    
    i++
  return

#ページ読み込み時
$ ->
  $("div#map_canvas").ready ->
    initialize()

