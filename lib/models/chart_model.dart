import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LatestDataChart {
  final int? data;
  final String label;
  final charts.Color barcolor;

  LatestDataChart(
      {@required this.data, required this.label, required this.barcolor});
}
