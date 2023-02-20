import 'dart:convert';

import 'package:weather_app/model/weather_data.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_data_current.dart';

import 'api_key.dart';

class FetchWeatherApi {
  WeatherData? weatherData;

  Future<WeatherData?> fetchWeatherData(lat, lon) async {
    var response = await http.get(Uri.parse(apiUrl(lat, lon)));

    var jsonData = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonData));

    return weatherData;
  }
}

String apiUrl(var lat, var lon) {
  String url;
  url =
      'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apiKey&units=metric&exclude=minutely';
  return url;
}
