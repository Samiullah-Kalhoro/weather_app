import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:weather_app/screens/login_page.dart';

import 'screens/onboarding_screen.dart';


void main() async {
    await Hive.initFlutter();
  await Hive.openBox('');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
              ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xff18172b),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('');
    bool firstTimeState = box.get('introduction') ?? true;
    return firstTimeState ? OnBoardingScreen() : const LoginPage();
  }
}
