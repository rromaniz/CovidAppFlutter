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
        elevation: 0,
        backgroundColor: Color.fromRGBO(74, 191, 180, 1),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [InfoTop()],
      )),
    );
  }
}
