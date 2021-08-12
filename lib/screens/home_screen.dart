import 'package:covi_app/providers/data_provider.dart';
import 'package:covi_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final currentTab = [PrincipalPage(), InfoPage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomNavigationProvider>(context);
    final theme = Provider.of<ThemeModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Covid-19MX',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  theme.darkTheme = !theme.darkTheme;
                  print('hi');
                },
                icon: Icon(
                    theme.darkTheme ? Icons.nightlight_round : Icons.wb_sunny))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomProvider.selectedIndex,
          elevation: 10,
          iconSize: 25,
          selectedFontSize: 14,
          selectedIconTheme: IconThemeData(size: 29),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          onTap: (index) {
            bottomProvider.setSelectedIndex = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.night_shelter_rounded), label: 'Cuidados'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info')
          ],
        ),
        body: currentTab[bottomProvider.selectedIndex]);
  }
}
