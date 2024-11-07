import 'package:location/location.dart';

/// Helper class for permissions
class PermissionHelper {
  PermissionHelper._();

  static final Location _location = Location();

  /// To request location permission
  static Future<bool> requestLocationPermission() async {
    var status = await _location.requestPermission();
    return status == PermissionStatus.granted;
  }

  /// To request location service
  static Future<bool> requestLocationService() {
    return _location.requestService();
  }
}
