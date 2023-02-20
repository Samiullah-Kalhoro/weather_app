import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app/api/fetch_weather.dart';

import '../model/weather_data.dart';

class GlobalController extends GetxController {
  //create various variables here
  final RxBool _isLoading = true.obs;

  final RxDouble _lattitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;

  final weatherData = WeatherData().obs;

  @override
  void onInit() {
    if (_isLoading.isTrue) {
      getLocation();
    }
    super.onInit();
  }

  //create getters for the variables
  bool get isLoading => _isLoading.value;

  double get lattitude => _lattitude.value;

  double get longitude => _longitude.value;

  WeatherData getWeatherData() {
    return weatherData.value;
  }

  void getLocation() async {
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission isPermissionGranted;
    if (!isServiceEnabled) {
      return Future.error("Location services are disabled.");
    }
    // status of the location permission
    isPermissionGranted = await Geolocator.checkPermission();

    if (isPermissionGranted == LocationPermission.deniedForever) {
      return Future.error(
          "Location permissions are permanently denied, we cannot request permissions.");
    }
    if (isPermissionGranted == LocationPermission.denied) {
      isPermissionGranted = await Geolocator.requestPermission();
      if (isPermissionGranted != LocationPermission.whileInUse &&
          isPermissionGranted != LocationPermission.always) {
        return Future.error(
            "Location permissions are denied (actual value: $isPermissionGranted).");
      }
    }

    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      //update the variables i.e lattitude longitude
      _lattitude.value = value.latitude;
      _longitude.value = value.longitude;

      //Calling weather api here
      return FetchWeatherApi()
          .fetchWeatherData(lattitude, longitude)
          .then((value) {
        weatherData.value = value!;
        _isLoading.value = false;
      });
    });
  }
}
