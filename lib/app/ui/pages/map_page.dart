import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';

class MapPage extends GetView {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(53.6264616, 55.8851368),
        zoom: 6.0,
        maxZoom: 16.5,
        minZoom: 3,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate:
              "https://api.maptiler.com/maps/pastel/256/{z}/{x}/{y}@2x.png?key=v1rrCATS7vfrfH1Ks78f",
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(53.6264616, 55.8851368),
              builder: (ctx) => const FlutterLogo(),
            ),
          ],
        ),
      ],
    );
  }
}
