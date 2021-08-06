import 'package:covi_app/themes/themes.dart';
import 'package:flutter/material.dart';
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
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeModel(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => BottomNavigationProvider(),
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
    final theme = Provider.of<ThemeModel>(context);
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Info Covid-19',
          initialRoute: 'home',
          home: HomeScreen(),
          routes: {
            'home': (_) => HomeScreen(),
            'info': (_) => InfoPage(),
            'settings': (_) => SettingsPage()
          },
          theme: theme.darkTheme ? buildDarkTheme() : buildLightTheme());
    });
  }
}
