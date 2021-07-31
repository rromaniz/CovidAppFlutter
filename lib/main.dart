import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:covi_app/providers/data_provider.dart';
import 'package:covi_app/screens/screens.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DataProvider(),
          lazy: false,
        )
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Info Covid-19',
        initialRoute: 'home',
        home: HomeScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case 'info':
              return PageTransition(
                  child: InfoPage(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                  reverseDuration: Duration(microseconds: 702200));
            default:
              return null;
          }
        },
        theme: new ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(246, 248, 250, 1),
            fontFamily: 'FiraSans'),
      );
    });
  }
}
