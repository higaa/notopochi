# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


initialize = ->
  latlng = new (google.maps.LatLng)(35.709984, 139.810703)
  opts = 
    zoom: 15
    center: latlng
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new (google.maps.Map)(document.getElementById('map_canvas'), opts)
  return
  

initialize2 = ->
  latlng = new (google.maps.LatLng)(35.709984, 139.810703)
  opts = 
    zoom: 6
    center: latlng
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new (google.maps.Map)(document.getElementById('map_canvas'), opts)
  map.setCenter new (google.maps.LatLng)(36.870832, 139.130859)
  
  latlng = new google.maps.LatLng(35.539001,134.228468)
  mopts = 
    position: latlng,
    map: map
    title:"スフィンクス"
  marker = new google.maps.Marker(mopts)
  contentString="<dl id='infowin1'><dt>スフィンクス</dt><dd><img src='./notopon.jpg' align='left' />スフィンクス（Sphinx）は、エジプト神話やギリシア神話、メソポタミア神話などに登場する、ライオンの身体と人間の顔を持った神聖な存在あるいは怪物。<a href='http://ja.wikipedia.org/wiki/%E3%82%B9%E3%83%95%E3%82%A3%E3%83%B3%E3%82%AF%E3%82%B9'>wikipedia</a>より。</dd></dl>"
  infowindow = new (google.maps.InfoWindow)(content: contentString)

  google.maps.event.addListener marker, 'click', ->
    infowindow.open map,marker
    return
    
  points1 = [
    new (google.maps.LatLng)(35.687418, 139.707642)
    new (google.maps.LatLng)(35.174931, 136.900635)
    new (google.maps.LatLng)(36.060756, 136.223602)
    new (google.maps.LatLng)(36.559291, 136.656189)
  ]
  points2 = [
    new (google.maps.LatLng)(35.687418, 139.707642)
    new (google.maps.LatLng)(36.386466, 139.062195)
    new (google.maps.LatLng)(37.906283, 139.042969)
    new (google.maps.LatLng)(39.71511, 140.103149)
  ]
  points3 = [
    new (google.maps.LatLng)(37.906283, 139.042969)
    new (google.maps.LatLng)(39.704545, 141.15509)
  ]
  polyLineOptions1 =
    path: points1
    strokeWeight: 5
    strokeColor: "#0000ff"
    strokeOpacity: "0.5"
  polyLineOptions2 =
    path: points2
    strokeWeight: 5
    strokeColor: "#0000ff"
    strokeOpacity: "0.5"
  polyLineOptions3 =
    path: points3
    strokeWeight: 5
    strokeColor: "#0000ff"
    strokeOpacity: "0.5"
  line1 = new (google.maps.Polyline)(polyLineOptions1)
  line2 = new (google.maps.Polyline)(polyLineOptions2)
  line3 = new (google.maps.Polyline)(polyLineOptions3)
#  google.maps.event.addListenerOnce map, 'idle', ->
    #gmap初期化後の処理
  line1.setMap map
  line2.setMap map
  line3.setMap map
#    return
#  alert "a1"
  return

$ ->
  $("div#map_canvas").ready ->
    initialize2()

#$.mobile.changePage $('#pgSpotMap')
# ページ遷移後に地図を(再)表示する
#displaySpotOnMap curPlan, '/images/icon/mm_20_purple.png', '/images/icon/mm_20_shadow.png'
# 地図の中心を移動・・・普通にやるとうまくいかないので以下のようにする
#google.maps.event.addListenerOnce gMap, 'idle', ->
##  gMap.setCenter new (google.maps.LatLng)(curPlan.spot_lat, curPlan.spot_lng)
#  # do something only the first time the map is loaded
#  return
