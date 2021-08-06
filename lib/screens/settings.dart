import 'package:covi_app/providers/data_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context);
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tema',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {
                            theme.darkTheme = !theme.darkTheme;
                            print('hi');
                          },
                          icon: Icon(theme.darkTheme
                              ? Icons.nightlight_round
                              : Icons.wb_sunny))
                    ],
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlue,
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                color: Colors.indigo,
              ),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
