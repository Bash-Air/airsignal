/// Example of a time series chart using a bar renderer.

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class HistoryChart extends StatelessWidget {
  final List<charts.Series<OrdinalSales, String>> seriesList;
  final bool animate;

  const HistoryChart(this.seriesList, {Key? key, required this.animate}) : super(key: key);

  factory HistoryChart.withSampleData() {
    return HistoryChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    // Create the ticks to be used the domain axis.
    final staticTicks = <charts.TickSpec<String>>[
      const charts.TickSpec('2015'),
      const charts.TickSpec('2016'),
      const charts.TickSpec('2017'),
      const charts.TickSpec('2023'),
    ];

    return charts.BarChart(
      seriesList,
      animate: animate,
      domainAxis: charts.OrdinalAxisSpec(
          tickProviderSpec:
          charts.StaticOrdinalTickProviderSpec(staticTicks)),
    );
  }

  /// Create series list with single series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
      OrdinalSales('2014', 5000),
      OrdinalSales('2015', 25000),
      OrdinalSales('2016', 100000),
      OrdinalSales('2017', 750000),
      OrdinalSales('2018', 750000),
      OrdinalSales('2019', 750000),
      OrdinalSales('2020', 750000),
      OrdinalSales('2021', 750000),
      OrdinalSales('2022', 750000),
      OrdinalSales('2023', 750000),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: globalSalesData,
      ),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
