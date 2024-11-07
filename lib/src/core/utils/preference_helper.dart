import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Helper class for local storage
class PreferenceHelper {
  PreferenceHelper._();

  static final PreferenceHelper instance = PreferenceHelper._();

  SharedPreferences? _prefs;

  /// To initialize this class
  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// To save a location
  Future<void> saveLocation(double lat, double lng) async {
    await _prefs?.setDouble('lat', lat);
    await _prefs?.setDouble('lng', lng);
  }

  /// To get a save location or default location
  LatLng getLocation() {
    return LatLng(
      _prefs!.getDouble('lat') ?? 51.5072,
      _prefs!.getDouble('lng') ?? 0.1276,
    );
  }
}
