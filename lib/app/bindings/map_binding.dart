import 'package:get/get.dart';

import '../controllers/node_controller.dart';

class MapBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NodeController());
  }
}