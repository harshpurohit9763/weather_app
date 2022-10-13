import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/modules/model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=f255a278d848c69bcbb630ca15d56fda');
    var response = await http.get(uri);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body));

    return Weather.fromJson(body);
  }
}
