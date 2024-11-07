import 'package:dio/dio.dart';
import 'package:weather/src/core/apis/models/location/location_model.dart';
import 'package:weather/src/core/apis/models/weather/weather_model.dart';
import 'package:weather/src/core/configs/api_config.dart';

/// Helper class for api calls
class ApiHelper {
  ApiHelper._();

  static Dio? _dio;

  static void init(Dio dio) {
    _dio = dio;
  }

  static const String _baseDataUrl = 'https://api.openweathermap.org/data/2.5';
  static const String _baseGeoUrl = 'https://api.openweathermap.org/geo/1.0';

  static String _getWeatherUrl({required double lat, required double lng}) =>
      '$_baseDataUrl/weather?lat=$lat&lon=$lng&appid=${ApiConfig.weatherKey}&units=metric';

  static String _getLocationUrl({required String query}) =>
      '$_baseGeoUrl/direct?q=$query&limit=5&appid=${ApiConfig.weatherKey}';

  /// To get weather icon image from code
  static String getWeatherIcon(String code) =>
      'https://openweathermap.org/img/wn/$code@2x.png';

  /// To get weather info from lat lng
  static Future<WeatherModel> getWeatherInfo(
      {required double lat, required double lng}) async {
    var response = await _dio!.get(_getWeatherUrl(lat: lat, lng: lng));
    return WeatherModel.fromJson(response.data);
  }

  /// To get location list from city name
  static Future<List<LocationModel>> getLocations(
      {required String query}) async {
    var response = await _dio!.get(_getLocationUrl(query: query));
    return (response.data as List)
        .map((e) => LocationModel.fromJson(e))
        .toList();
  }
}
