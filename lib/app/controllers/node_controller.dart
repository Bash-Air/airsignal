import 'package:airsignal_flutter/app/data/model/node.dart';
import 'package:airsignal_flutter/app/data/provider/node.dart';
import 'package:get/get.dart';

class NodeController extends GetxController {
  final NodeProvider nodeProvider;
  NodeController(this.nodeProvider);

  final _loading = true.obs;
  get loading => _loading.value;

  final _nodePointList = <NodePoint>[].obs;
  get nodePointList => _nodePointList.value;

  fetchNodePoints() async {
    _loading.value = true;
    _nodePointList.value = await nodeProvider.all();
    _loading.toggle();
  }
}