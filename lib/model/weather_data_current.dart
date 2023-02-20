// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeatherDataCurrent {
  final Current current;
  WeatherDataCurrent({
    required this.current,
  });

  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) =>
      WeatherDataCurrent(
        current: Current.fromJson(json['current'] as Map<String, dynamic>),
      );
}

class Current {
  double? temp;
  double? feelsLike;
  int? pressure;
  int? humidity;
  int? uvi;
  int? clouds;
  int? visibility;
  double? windSpeed;
  List<Weather>? weather;

  Current({
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.weather,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        temp: (json['temp'] as num?)?.toDouble(),
        feelsLike: (json['feels_like'] as num?)?.toDouble(),
        pressure: json['pressure'] as int?,
        humidity: json['humidity'] as int?,
        uvi: json['uvi'] as int?,
        clouds: json['clouds'] as int?,
        visibility: json['visibility'] as int?,
        windSpeed: (json['wind_speed'] as num?)?.toDouble(),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'feels_like': feelsLike,
        'pressure': pressure,
        'humidity': humidity,
        'uvi': uvi,
        'clouds': clouds,
        'visibility': visibility,
        'wind_speed': windSpeed,
        'weather': weather?.map((e) => e.toJson()).toList(),
      };
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json['id'] as int?,
        main: json['main'] as String?,
        description: json['description'] as String?,
        icon: json['icon'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'main': main,
        'description': description,
        'icon': icon,
      };
}
