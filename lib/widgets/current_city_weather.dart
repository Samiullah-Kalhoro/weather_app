import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:weather_app/model/weather_data_current.dart';

import '../controller/global_controller.dart';

class CurrentCityWeather extends StatefulWidget {
  const CurrentCityWeather({super.key, required this.weatherDataCurrent});

  final WeatherDataCurrent weatherDataCurrent;

  @override
  State<CurrentCityWeather> createState() => _CurrentCityWeatherState();
}

class _CurrentCityWeatherState extends State<CurrentCityWeather> {
  String city = "";
  String subCity = "";

  final GlobalController _globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  void initState() {
    getAddress(_globalController.lattitude, _globalController.longitude);
    super.initState();
  }

  getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    setState(() {
      city = place.locality!;
      subCity = place.subLocality!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Text(
              subCity,
              style: const TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            Text(
              city,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            Text(
              "  ${widget.weatherDataCurrent.current.temp!.toStringAsFixed(0)}\u00b0",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            Text(
              "${widget.weatherDataCurrent.current.weather![0].main}",
              style: const TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w100,
                  fontSize: 16),
            ),
            Text(
              "Feels like: ${widget.weatherDataCurrent.current.feelsLike!.toStringAsFixed(0)}\u00b0",
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Image.asset(
          'assets/images/House.png',
          fit: BoxFit.contain,
        ),
        // const CustomBottomNav(),
      ],
    );
  }
}
