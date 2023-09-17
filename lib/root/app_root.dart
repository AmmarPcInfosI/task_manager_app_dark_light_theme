import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_forecast_app/screens/splash_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,  
      home: SplashScreen(),
    );
  }
}