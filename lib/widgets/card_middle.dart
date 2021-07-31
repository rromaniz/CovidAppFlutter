import 'package:covi_app/charts/bar_chart.dart';
import 'package:covi_app/models/chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class MiddleCard extends StatelessWidget {
  final int casosHistory;
  final int decesosHistory;
  final int recuperadosHistory;
  final int criticosHistory;

  MiddleCard(this.casosHistory, this.decesosHistory, this.recuperadosHistory,
      this.criticosHistory);

  @override
  Widget build(BuildContext context) {
    final List<LatestDataChart> data = [
      LatestDataChart(
          data: this.casosHistory,
          label: 'Confirmados',
          barcolor:
              charts.ColorUtil.fromDartColor(Color.fromRGBO(89, 72, 168, 1))),
      LatestDataChart(
          data: this.decesosHistory,
          label: 'Decesos',
          barcolor:
              charts.ColorUtil.fromDartColor(Color.fromRGBO(218, 76, 78, 1))),
      LatestDataChart(
          data: this.recuperadosHistory,
          label: 'Recuperados',
          barcolor:
              charts.ColorUtil.fromDartColor(Color.fromRGBO(147, 216, 240, 1))),
      LatestDataChart(
          data: this.criticosHistory,
          label: 'Criticos',
          barcolor:
              charts.ColorUtil.fromDartColor(Color.fromRGBO(255, 219, 106, 1)))
    ];
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(7),
      height: size.height * 0.5,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Total de casos en México',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Expanded(child: LatestChart(data)),
                        ],
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
