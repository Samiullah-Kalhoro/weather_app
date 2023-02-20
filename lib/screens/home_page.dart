import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/global_controller.dart';

import '../widgets/current_city_weather.dart';
import '../widgets/navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalController _globalController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: const CustomBottomNav(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Obx(
            () => _globalController.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                :  CurrentCityWeather(weatherDataCurrent: _globalController.getWeatherData().getCurrentWeather(),),
          ),
        ),
      ),
    );
  }
}
