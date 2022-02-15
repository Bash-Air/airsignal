/// Example of a time series chart using a bar renderer.

import 'package:airsignal_flutter/app/data/model/node.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:charts_common/src/common/color.dart' as chart;

class HistoryChart extends StatelessWidget {
  final List<NodeHistoryTick> histories;

  // final List<charts.Series<OrdinalSales, String>> seriesList;
  final bool animate;

  const HistoryChart(this.histories, {Key? key, required this.animate})
      : super(key: key);

  String _getTime(String time) {
    var val = time.split('T').last.split(':');
    return '${val[0]}:${val[1]}';
  }

  List<charts.Series<NodeHistoryTick, String>> _createData() {
    return [
      charts.Series<NodeHistoryTick, String>(
        id: 'Global Revenue',
        colorFn: (NodeHistoryTick tick, index) {
          var val = 0.0;
          if (index != null && histories[index].pm25 != null) {
            val = histories[index].pm25!;
          }
          if (val > 80) {
            val = 0;
          } else {
            val = 80 - val;
          }
          var hsl = HSLColor.fromAHSL(1, val, 1, 0.47);
          var color = hsl.toColor();
          return chart.Color(
              r: color.red,
              g: color.green,
              b: color.blue,
              a: (255 * color.opacity).toInt());
        },
        domainFn: (NodeHistoryTick tick, _) => _getTime(tick.time),
        measureFn: (NodeHistoryTick tick, _) => tick.pm25 ?? 0,
        data: histories,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var data = _createData();

    final staticTicks = <charts.TickSpec<String>>[
      charts.TickSpec(_getTime(histories.first.time)),
      charts.TickSpec(_getTime(histories[histories.length ~/ 2].time)),
      charts.TickSpec(_getTime(histories.last.time))
    ];

    return charts.BarChart(
      data,
      animate: animate,
      domainAxis: charts.OrdinalAxisSpec(
          tickProviderSpec: charts.StaticOrdinalTickProviderSpec(staticTicks)),
    );
  }
}
