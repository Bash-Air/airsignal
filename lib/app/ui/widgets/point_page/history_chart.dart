/// Example of a time series chart using a bar renderer.

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class HistoryChart extends StatelessWidget {
  final List<charts.Series<TimeSeriesSales, DateTime>> seriesList;
  final bool animate;

  const HistoryChart(this.seriesList, {Key? key, required this.animate})
      : super(key: key);

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory HistoryChart.withSampleData() {
    return HistoryChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(seriesList,
        animate: true,
        // Set the default renderer to a bar renderer.
        // This can also be one of the custom renderers of the time series chart.
        defaultRenderer: charts.BarRendererConfig<DateTime>(),
        // It is recommended that default interactions be turned off if using bar
        // renderer, because the line point highlighter is the default for time
        // series chart.
        defaultInteractions: true,
        // If default interactions were removed, optionally add select nearest
        // and the domain highlighter that are typical for bar charts.
        behaviors: [charts.SelectNearest(), charts.DomainHighlighter()],

        // Customizes the date tick formatter. It will print the day of month
        // as the default format, but include the month and year if it
        // transitions to a new month.
        //
        // minute, hour, day, month, and year are all provided by default and
        // you can override them following this pattern.
        domainAxis: const charts.DateTimeAxisSpec(
            tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
                day: charts.TimeFormatterSpec(
                    format: 'dd',
                    transitionFormat: 'dd',
                    noonFormat: 'HHpp'
                )
            )
        )
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      TimeSeriesSales(DateTime(2022, 9, 1, 1), 5),
      TimeSeriesSales(DateTime(2022, 9, 1, 2), 25),
      TimeSeriesSales(DateTime(2022, 9, 1, 3), 100),
      TimeSeriesSales(DateTime(2022, 9, 1, 4), 98),
      TimeSeriesSales(DateTime(2022, 9, 1, 5), 100),
      TimeSeriesSales(DateTime(2022, 9, 1, 6), 87),
      TimeSeriesSales(DateTime(2022, 9, 1, 7), 67),
      TimeSeriesSales(DateTime(2022, 9, 1, 8), 66),
      TimeSeriesSales(DateTime(2022, 9, 1, 9), 65),
      TimeSeriesSales(DateTime(2022, 9, 1, 10), 70),
      TimeSeriesSales(DateTime(2022, 9, 1, 11), 80),
      TimeSeriesSales(DateTime(2022, 9, 1, 12), 90),
      TimeSeriesSales(DateTime(2022, 9, 1, 13), 5),
      TimeSeriesSales(DateTime(2022, 9, 1, 14), 25),
      TimeSeriesSales(DateTime(2022, 9, 1, 15), 100),
      TimeSeriesSales(DateTime(2022, 9, 1, 16), 98),
      TimeSeriesSales(DateTime(2022, 9, 1, 17), 100),
      TimeSeriesSales(DateTime(2022, 9, 1, 18), 87),
      TimeSeriesSales(DateTime(2022, 9, 1, 19), 67),
      TimeSeriesSales(DateTime(2022, 9, 1, 20), 66),
      TimeSeriesSales(DateTime(2022, 9, 1, 21), 65),
      TimeSeriesSales(DateTime(2022, 9, 1, 22), 70),
      TimeSeriesSales(DateTime(2022, 9, 1, 23), 80),
    ];

    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, value) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
