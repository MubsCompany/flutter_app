import 'package:flutter/material.dart';
import 'package:flutter_app/viewmodels/weather_app_city_entry_viewmodel.dart';
import 'package:flutter_app/viewmodels/weather_app_forecast_viewmodel.dart';
import 'package:flutter_app/views/weather_app_homeview.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CityEntryViewModel>(
        create: (_) => CityEntryViewModel()),
    ChangeNotifierProvider<ForecastViewModel>(
        create: (_) => ForecastViewModel()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Provider',
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}