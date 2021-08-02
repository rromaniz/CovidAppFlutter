import 'package:covi_app/providers/data_provider.dart';
import 'package:covi_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context, listen: true);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid-19MX',
          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(74, 191, 180, 1),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'info');
              },
              icon: Icon(
                Icons.info_outlined,
                color: Colors.white70,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: dataProvider.getDataonDisplay(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var childData;
            if (!snapshot.hasData) {
              childData = Container(
                  width: double.infinity,
                  height: size.height * 0.7,
                  color: Color.fromRGBO(246, 248, 250, 1),
                  child: Center(child: Image.asset('assets/rocket.gif')));
            } else {
              childData = Column(
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

            return AnimatedSwitcher(
              duration: Duration(milliseconds: 3300),
              child: childData,
            );
          },
        ),
      ),
    );
  }
}
