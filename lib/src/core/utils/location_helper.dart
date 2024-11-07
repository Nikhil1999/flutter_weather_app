import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

/// Helper class for location
class LocationHelper {
  LocationHelper._();

  /// To get device current location
  static Future<LatLng> getCurrentLocation() async {
    var tLocation = await Geolocator.getCurrentPosition(
      locationSettings: AndroidSettings(
        forceLocationManager: true,
      ),
    );
    return LatLng(tLocation.latitude, tLocation.longitude);
  }
}
