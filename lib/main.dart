import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:weather_app/screens/home_page.dart';

import 'kconstants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
