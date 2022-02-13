import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../controllers/node_controller.dart';
import '../data/provider/node.dart';

class PointPageBinding implements Bindings {
  @override
  void dependencies() {
    var client = http.Client();
    Get.put(NodeController(NodeProvider(client)));
  }
}
