import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/src/core/apis/api_helper.dart';
import 'package:weather/src/core/apis/models/location/location_model.dart';
import 'package:weather/src/core/configs/string_config.dart';
import 'package:weather/src/core/utils/toast_helper.dart';

/// Provider for handling search location flow
class SearchLocationProvider extends ChangeNotifier {
  bool _isLoading = false;
  final List<LocationModel> _locations = [];

  bool get isLoading => _isLoading;
  List<LocationModel> get locations => _locations;

  /// To load a new set of locations from a queried city
  Future<void> loadLocations({required String query}) async {
    if (!_isLoading) {
      try {
        _isLoading = true;
        Future.delayed(Duration.zero, () => notifyListeners());

        List<LocationModel> list = await ApiHelper.getLocations(query: query);
        _locations.clear();
        _locations.addAll(list);

        if (_locations.isEmpty) {
          ToastHelper.showToast(message: StringConfig.noCityFound);
        }
      } on DioException catch (e) {
        ToastHelper.showToast(message: StringConfig.somethingWentWrong);
        debugPrint(e.toString());
      } catch (e) {
        ToastHelper.showToast(message: StringConfig.somethingWentWrong);
        debugPrint(e.toString());
      } finally {
        _isLoading = false;
        Future.delayed(Duration.zero, () => notifyListeners());
      }
    }
  }
}
