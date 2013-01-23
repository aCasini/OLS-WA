<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title id='title'>Open Location Service - OLS</title>

<!-- ** CSS ** -->
<!-- base library -->
<link rel="stylesheet" type="text/css" href="../resources/extJS/css/ext-all.css" />
<link rel="stylesheet" type="text/css" href="../resources/extJS/css/style.css" />

<!-- Open Layers Lybrary -->
<script src="http://openlayers.org/api/OpenLayers.js"></script>


<!-- ** Javascript ** -->
<!-- ExtJS library: base/adapter -->
<script type="text/javascript"
	src="../resources/extJS/adapter/ext-base.js"></script>
<!-- ExtJS library: all widgets -->
<script type="text/javascript" src="../resources/extJS/ext-all-debug.js"></script>


<!-- extensions -->
<script type="text/javascript" src="components/georouting/FormGeorouting.js"></script>
<script type="text/javascript" src="components/georouting/ListViewGeorouting.js"></script>


<!-- page specific -->
<script type="text/javascript">
	Ext.onReady(function() {
		Ext.QuickTips.init();
// 		var bd = Ext.getBody();
// 		bd.createChild({tag: 'h2', html: 'Form 1 - Very Simple'});

		var form = new GEO.GeoroutingForm();
		form.render(document.body);
		
		var listGeo = new GEO.ListGeoroutingForm();
		listGeo.render(document.body);
	});

</script>

</head>
<body>
	<fieldset> 
		<div style="width:100%; height:70%" id="map"></div>
	</fieldset>
      <script defer="defer" type="text/javascript">
        var map = new OpenLayers.Map('map');
        var wms = new OpenLayers.Layer.WMS( "OpenLayers WMS",
            "http://vmap0.tiles.osgeo.org/wms/vmap0", {layers: 'basic'} );
        map.addLayer(wms);
        map.zoomToMaxExtent();
      </script>
      
</body>
</html>




