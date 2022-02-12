import 'package:get/get.dart';

class MapBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NodeController());
  }
}