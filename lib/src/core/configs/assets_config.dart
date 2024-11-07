/// Contents all assets related to app
class AssetsConfig {
  const AssetsConfig._();

  static const images = _ImagesConfig();
}

class _ImagesConfig {
  const _ImagesConfig();

  final String humidity = 'assets/images/humidity.png';
  final String thermometer = 'assets/images/thermometer.png';
  final String wind = 'assets/images/wind.png';
}
