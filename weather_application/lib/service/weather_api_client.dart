import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_application/model/model_weather.dart';

class WeatherApiClient{
  Future<Weather>? getCurrentWeather(String? location,String? key) async {
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$key&unit=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    Weather weather = Weather.fromJson(body);
    print(weather);
    return weather;
  }
}