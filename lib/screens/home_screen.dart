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

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Covid-19MX',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
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
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
        ),
        body: currentTab[bottomProvider.selectedIndex]);
  }
}
