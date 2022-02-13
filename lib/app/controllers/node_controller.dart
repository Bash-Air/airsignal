import 'package:get/get.dart';

import '../data/provider/node.dart';
import '../data/model/node.dart' as model;

class NodeController extends GetxController {
  final NodeProvider nodeProvider;
  NodeController(this.nodeProvider);

  final _loading = true.obs;
  get loading => _loading.value;

  final _loadingHistory = true.obs;
  get loadingHistory => _loadingHistory.value;

  model.Node? _node;
  model.Node? get node => _node;

  var _histories = <model.NodeHistoryTick>[];
  get histories => _histories;

  getNodeById(nodeId) async {
    _loading.value = true;
    _node = await nodeProvider.byId(nodeId);
    _loading.toggle();
  }

  getHistoryById(nodeId) async {
    _loadingHistory.value = true;
    _histories = await nodeProvider.history(nodeId);
    _loadingHistory.toggle();
  }
}