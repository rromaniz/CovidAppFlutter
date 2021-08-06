import 'package:covi_app/models/data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:covi_app/preferences/theme_preferences.dart';

class DataProvider extends ChangeNotifier {
  String _urlData = 'https://corona-api.com/countries/MX';

  var response;
  var datos;

  Future getDataonDisplay() async {
    if (response == null) {
      response = await http.get(Uri.parse(_urlData));

      final parsedResponse = Covidata.fromJson(response.body);

      datos = parsedResponse.data;
      return datos;
    }
    return datos;
  }

  notifyListeners();
}

///Tema provider
class ThemeModel extends ChangeNotifier {
  AppPreference appPreference = AppPreference();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    appPreference.setThemePref(value);
    notifyListeners();
  }
}

//bottom menu provider

class BottomNavigationProvider with ChangeNotifier {
  int _selectedIndex = 0;

  get selectedIndex => _selectedIndex;

  set setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
