import 'package:airsignal_flutter/app/controllers/node_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';

import '../../data/model/node.dart';
import '../widgets/point/map_point.dart';

class MapPage extends GetView<NodeController> {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchNodePoints();

    return Scaffold(body: Obx(() {
      return controller.loading
          ? const Text('Loading')
          : FlutterMap(
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
                    // markers: [
                    //   Marker(
                    //     width: 50.0,
                    //     height: 50.0,
                    //     point: LatLng(53.6264616, 55.8851368),
                    //     builder: (ctx) => const FlutterLogo(),
                    //   ),
                    // ],
                    markers: controller.nodePointList
                        .map<Marker>((NodePoint node) => Marker(
                              width: 50.0,
                              height: 50.0,
                              point: LatLng(node.location.latitude,
                                  node.location.longitude),
                              builder: (ctx) => MapPoint(nodePoint: node),
                            ))
                        .toList()),
              ],
            );
    }));
  }
}
