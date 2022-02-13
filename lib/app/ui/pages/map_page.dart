import 'package:airsignal_flutter/app/controllers/nodes_controller.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_tile_renderer/vector_tile_renderer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';

import '../../data/model/node.dart';
import '../layout/main_layout.dart';
import '../theme/map/custom_theme.dart';
import '../widgets/point/map_point.dart';

class MapPage extends GetView<NodesController> {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchNodePoints();

    return MainLayout(children: Obx(() {
      return controller.loading
          ? const Text('Loading')
          : Container(
              decoration: const BoxDecoration(color: Color(0x00f7f7f7)),
              child: FlutterMap(
                options: MapOptions(
                    center: LatLng(53.63, 55.95),
                    zoom: 11.0,
                    maxZoom: 18.0,
                    minZoom: 3.0,
                    plugins: [VectorMapTilesPlugin()]),
                layers: [
                  VectorTileLayerOptions(
                      theme: _mapTheme(context),
                      tileProviders: TileProviders({
                        'openmaptiles': _cachingTileProvider(_urlTemplate())
                      })),
                  MarkerLayerOptions(
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
              ));
    }));
  }

  VectorTileProvider _cachingTileProvider(String urlTemplate) {
    return MemoryCacheVectorTileProvider(
        delegate: NetworkVectorTileProvider(
            urlTemplate: urlTemplate,
            // this is the maximum zoom of the provider, not the
            // maximum of the map. vector tiles are rendered
            // to larger sizes to support higher zoom levels
            maximumZoom: 14),
        maxSizeBytes: 1024 * 1024 * 2);
  }

  _mapTheme(BuildContext context) {
    // maps are rendered using themes
    // to provide a dark theme do something like this:
    // if (MediaQuery.of(context).platformBrightness == Brightness.dark) return myDarkTheme();
    // return ProvidedThemes.lightTheme();
    return ThemeReader().read(customThemeData());
  }

  String _urlTemplate() {
    // Stadia Maps source https://docs.stadiamaps.com/vector/
    // return 'https://api.maptiler.com/tiles/v3/{z}/{x}/{y}.pbf?key=v1rrCATS7vfrfH1Ks78f';
    return 'https://api.maptiler.com/tiles/v3-openmaptiles/{z}/{x}/{y}.pbf?key=v1rrCATS7vfrfH1Ks78f';

    // Mapbox source https://docs.mapbox.com/api/maps/vector-tiles/#example-request-retrieve-vector-tiles
    // return 'https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/{z}/{x}/{y}.mvt?access_token=$apiKey',
  }
}
