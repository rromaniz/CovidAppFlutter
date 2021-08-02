import 'package:covi_app/widgets/info_top.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Información',
          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(74, 191, 180, 1),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(255, 240, 236, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 3,
                  indicatorColor: Color.fromRGBO(255, 120, 83, 1),
                  tabs: [
                    Tab(
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Recomendaciones",
                            style: TextStyle(
                                color: Color.fromRGBO(149, 152, 176, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sintomas",
                            style: TextStyle(
                                color: Color.fromRGBO(149, 152, 176, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.amberAccent,
                    child: Column(
                      children: [
                        InfoTop(),
                      ],
                    ),
                  ),
                  Container(child: Text('Luke'))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
