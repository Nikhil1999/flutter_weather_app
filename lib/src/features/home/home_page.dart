import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather/src/core/apis/api_helper.dart';
import 'package:weather/src/core/configs/assets_config.dart';
import 'package:weather/src/core/configs/color_config.dart';
import 'package:weather/src/core/configs/string_config.dart';
import 'package:weather/src/core/configs/style_config.dart';
import 'package:weather/src/core/utils/location_helper.dart';
import 'package:weather/src/core/utils/permission_helper.dart';
import 'package:weather/src/core/utils/toast_helper.dart';
import 'package:weather/src/core/utils/widgets/animated_digit.dart';
import 'package:weather/src/core/utils/widgets/loader.dart';
import 'package:weather/src/features/home/providers/weather_provider.dart';
import 'package:weather/src/features/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<WeatherProvider>().loadWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConfig.black,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  void _navigateToSearch(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SearchPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    WeatherProvider provider = context.watch();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [ColorConfig.primaryL1, ColorConfig.primary],
                radius: 1.0,
                center: Alignment.center,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48.0),
                bottomRight: Radius.circular(48.0),
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (provider.isLoading) ...[
                      Loader(
                        color: ColorConfig.white.withOpacity(0.7),
                      ),
                    ],
                    if (!provider.isLoading && provider.weather != null) ...[
                      const _DateAndLocation(),
                      const Expanded(
                        child: _WeatherInfo(),
                      ),
                      const _WeatherDetails(),
                    ],
                    if (!provider.isLoading && provider.weather == null) ...[
                      Text(
                        StringConfig.unableToGetWeatherInfo,
                        textAlign: TextAlign.center,
                        style: StyleConfig.text.style.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ColorConfig.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
        SafeArea(
          top: false,
          left: false,
          right: false,
          bottom: true,
          child: GestureDetector(
            onTap: () => _navigateToSearch(context),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    size: 28,
                    color: ColorConfig.white.withOpacity(0.7),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    StringConfig.searchCity,
                    textAlign: TextAlign.center,
                    style: StyleConfig.text.style.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: ColorConfig.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DateAndLocation extends StatelessWidget {
  const _DateAndLocation();

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat("MMM dd, yyyy").format(currentDate);

    WeatherProvider provider = context.watch();
    String location = provider.weather?.name ?? 'N/A';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          formattedDate,
          textAlign: TextAlign.center,
          style: StyleConfig.text.style.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorConfig.white.withOpacity(0.4),
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          location,
          textAlign: TextAlign.center,
          style: StyleConfig.text.style.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: ColorConfig.white.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}

class _WeatherInfo extends StatelessWidget {
  const _WeatherInfo();

  String capitalizeFirstLetter(String input) {
    if (input.isEmpty) return input;
    return input[0].toUpperCase() + input.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    WeatherProvider provider = context.watch();
    String code = provider.weather?.weather.first.icon ?? '02d';
    int temp = provider.weather?.main.temp.toInt() ?? 0;
    String description = capitalizeFirstLetter(
        provider.weather?.weather.first.description ?? 'N/A');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                ApiHelper.getWeatherIcon(code),
                height: 160,
                width: 160,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: StyleConfig.text.style.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorConfig.white.withOpacity(0.5),
          ),
        ),
        AnimatedDigit(
          number: temp,
          postText: '°',
          style: StyleConfig.text.style.copyWith(
            fontSize: 80.0,
            fontWeight: FontWeight.w700,
            color: ColorConfig.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

class _WeatherDetails extends StatelessWidget {
  const _WeatherDetails();

  double convertMetersPerSecondToKmPerHour(double speedInMetersPerSecond) {
    return speedInMetersPerSecond * 3.6;
  }

  Future<void> setCurrentLocation(WeatherProvider provider) async {
    if (await PermissionHelper.requestLocationPermission()) {
      if (await PermissionHelper.requestLocationService()) {
        bool check = false;
        while (!check) {
          await Future.delayed(const Duration(milliseconds: 500));
          check = await PermissionHelper.requestLocationService();
        }

        var location = await LocationHelper.getCurrentLocation();
        provider.loadWeather(
          lat: location.latitude,
          lng: location.longitude,
        );
      } else {
        ToastHelper.showToast(message: StringConfig.locationServiceNotEnabled);
      }
    } else {
      ToastHelper.showToast(message: StringConfig.locationAccessDenied);
    }
  }

  @override
  Widget build(BuildContext context) {
    WeatherProvider provider = context.watch();
    String wind =
        '${convertMetersPerSecondToKmPerHour(provider.weather?.wind.speed.toDouble() ?? 0).toInt()} km/h';
    String humidity = '${provider.weather?.main.humidity.toInt() ?? 0}%';
    String feeling = '${provider.weather?.main.feelsLike.toInt() ?? 0}°C';

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 28.0,
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
          ),
          decoration: BoxDecoration(
            color: ColorConfig.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(28.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _DetailTile(
                  title: StringConfig.wind,
                  image: AssetsConfig.images.wind,
                  info: wind,
                ),
                _DetailTile(
                  title: StringConfig.humidity,
                  image: AssetsConfig.images.humidity,
                  info: humidity,
                ),
                _DetailTile(
                  title: StringConfig.feeling,
                  image: AssetsConfig.images.thermometer,
                  info: feeling,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () => setCurrentLocation(context.read()),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: ColorConfig.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(28.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    StringConfig.setCurrentLocation,
                    textAlign: TextAlign.center,
                    style: StyleConfig.text.style.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorConfig.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DetailTile extends StatelessWidget {
  final String title;
  final String image;
  final String info;

  const _DetailTile({
    required this.title,
    required this.image,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: StyleConfig.text.style.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: ColorConfig.white.withOpacity(0.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Image.asset(
            image,
            width: 32.0,
            height: 32.0,
          ),
        ),
        Text(
          info,
          textAlign: TextAlign.center,
          style: StyleConfig.text.style.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: ColorConfig.white.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
