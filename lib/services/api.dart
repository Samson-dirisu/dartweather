import 'dart:convert';

import 'package:dartweather/models/forcast.dart';
import 'package:dartweather/utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<ForeCast> getWeather({required String state}) async {
    var url = '${Constants.BASE_URL}q=$state&appid=${Constants.API_KEY}';
    // var url =
    //     'https://api.openweathermap.org/data/2.5/weather?q=edo&appid=8e464961e4a17ee122c2f1a66b86835e';

    var response = await http.get(Uri.parse(url));
    var jsonResponce = json.decode(response.body);
    return ForeCast.fromJson(jsonResponce);
  }
}
