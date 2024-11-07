import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather/src/core/apis/api_helper.dart';
import 'package:weather/src/core/apis/models/weather/weather_model.dart';
import 'package:weather/src/core/utils/preference_helper.dart';

/// Provider to handle weather info
class WeatherProvider extends ChangeNotifier {
  bool _isLoading = false;
  WeatherModel? _weather;

  bool get isLoading => _isLoading;
  WeatherModel? get weather => _weather;

  /// To load a new weather info for a location
  Future<void> loadWeather({
    double? lat,
    double? lng,
  }) async {
    LatLng lastLatLng = PreferenceHelper.instance.getLocation();

    lat ??= lastLatLng.latitude;
    lng ??= lastLatLng.longitude;

    if (!_isLoading) {
      try {
        _isLoading = true;
        _weather = null;
        Future.delayed(Duration.zero, () => notifyListeners());

        _weather = await ApiHelper.getWeatherInfo(lat: lat, lng: lng);
        await PreferenceHelper.instance.saveLocation(lat, lng);
      } on DioException catch (e) {
        debugPrint(e.toString());
      } catch (e) {
        debugPrint(e.toString());
      } finally {
        _isLoading = false;
        Future.delayed(Duration.zero, () => notifyListeners());
      }
    }
  }
}
