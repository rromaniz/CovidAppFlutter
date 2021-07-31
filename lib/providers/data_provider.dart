import 'package:covi_app/models/data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class DataProvider extends ChangeNotifier {
  String _urlData = 'https://corona-api.com/countries/MX';

  Future getDataonDisplay() async {
    final response = await http.get(Uri.parse(_urlData));

    final parsedResponse = Covidata.fromJson(response.body);

    var datos = parsedResponse.data;
    return datos;
  }

  notifyListeners();
}
