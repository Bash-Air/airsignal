import 'package:get/get.dart';

import '../bindings/map_binding.dart';
import '../ui/pages/map_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.map,
        page: () => const MapPage(),
        binding: MapBinding()),
  ];
}
