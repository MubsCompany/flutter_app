import 'package:flutter_app/models/forecast.dart';
import 'package:flutter_app/models/location.dart';

abstract class WeatherApi {
  Future<Forecast> getWeather(Location location);
  Future<Location> getLocation(String city);
}