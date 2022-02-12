import 'dart:convert';

import 'package:airsignal_flutter/app/data/model/node.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class NodeProvider {
  final http.Client httpClient;

  NodeProvider(this.httpClient);

  all() async {
    try {
      var uri = Uri.https('api.bashair.ru', '/node/all');
      var response = await httpClient.get(uri);
      if (response.statusCode == 200) {
        Iterable jsonResponse = jsonDecode(response.body);
        List<NodePoint> listNodePoint =
            jsonResponse.map((data) => NodePoint.fromJson(data)).toList();
        return listNodePoint;
      } else {
        print('Error get Node points');
      }
    } catch (_) {}
  }

  byId(int nodeId) async {}

  history(int nodeId) async {}

  create() async {}
}
