import 'package:covi_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:covi_app/providers/data_provider.dart';
import 'package:sizer/sizer.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  var dataFromProvider;

  Future _getData() async {
    if (this.dataFromProvider != null) {
      return this.dataFromProvider;
    }
    final fetchProvider = Provider.of<DataProvider>(context, listen: false);
    this.dataFromProvider = await fetchProvider.getDataonDisplay();
    return this.dataFromProvider;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: this._getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Container(
                  height: 80.h,
                  width: 100.w,
                  child: Center(
                      child: Image.asset(
                    'assets/rocket.gif',
                    height: 100,
                  )));
            default:
              return Column(
                children: [
                  Cardtop(snapshot.data.timeline[0].newConfirmed.toString(),
                      snapshot.data.timeline[0].newDeaths.toString()),
                  InfoTop(),
                  MiddleCard(
                      snapshot.data.latestData.confirmed,
                      snapshot.data.latestData.deaths,
                      snapshot.data.latestData.recovered,
                      snapshot.data.latestData.critical),
                ],
              );
          }
        },
      ),
    );
  }
}
