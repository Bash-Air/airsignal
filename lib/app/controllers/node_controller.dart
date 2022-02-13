import 'package:get/get.dart';

import '../data/provider/node.dart';

class NodeController extends GetxController {
  final NodeProvider nodeProvider;
  NodeController(this.nodeProvider);

  final _loading = true.obs;
  get loading => _loading.value;

  late final Node _node;
  get node => _node;

  getNodeById(nodeId) async {
    _loading.value = true;
    _node = await nodeProvider.byId(nodeId);
    _loading.toggle();
  }
}