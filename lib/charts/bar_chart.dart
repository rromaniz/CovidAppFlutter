import 'package:covi_app/models/chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LatestChart extends StatelessWidget {
  final List<LatestDataChart> data;

  const LatestChart(this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<LatestDataChart, String>> series = [
      charts.Series(
          id: 'Informacion reciente',
          data: data,
          domainFn: (LatestDataChart series, _) => series.label,
          measureFn: (LatestDataChart series, _) => series.data,
          colorFn: (LatestDataChart series, _) => series.barcolor,
          labelAccessorFn: (LatestDataChart series, _) =>
              '${series.data.toString()}')
    ];
    return charts.BarChart(series,
        animate: true,
        vertical: false,
        barRendererDecorator: new charts.BarLabelDecorator(
            insideLabelStyleSpec:
                new charts.TextStyleSpec(color: charts.MaterialPalette.white),
            outsideLabelStyleSpec: new charts.TextStyleSpec()),
        domainAxis: new charts.OrdinalAxisSpec());
  }
}
