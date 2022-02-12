import 'package:airsignal_flutter/app/data/model/node.dart';
import 'package:flutter/material.dart';

class MapPoint extends StatelessWidget {

  final NodePoint nodePoint;
  const MapPoint({Key? key, required this.nodePoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MaterialColor color = Colors.blueGrey;

    if (nodePoint.pm25 != null) {
      if (nodePoint.pm25! < 20) {
        color = Colors.green;
      } else if (nodePoint.pm25! < 40) {
        color = Colors.yellow;
      } else if (nodePoint.pm25! < 80) {
        color = Colors.orange;
      } else if (nodePoint.pm25! >= 80) {
        color = Colors.red;
      }
    }

    return Container(
      child: Center(child: Text("${nodePoint.pm25}")),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color
      ),
    );
  }
}
