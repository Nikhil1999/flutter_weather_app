import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather/src/core/apis/api_helper.dart';
import 'package:weather/src/core/configs/color_config.dart';
import 'package:weather/src/core/configs/string_config.dart';
import 'package:weather/src/core/utils/preference_helper.dart';
import 'package:weather/src/features/home/home_page.dart';
import 'package:weather/src/features/home/providers/weather_provider.dart';
import 'package:weather/src/features/search/providers/search_location_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: ColorConfig.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  ApiHelper.init(Dio());
  await PreferenceHelper.instance.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WeatherProvider()),
        ChangeNotifierProvider(create: (_) => SearchLocationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: StringConfig.weather,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Montserrat',
        ),
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()],
        home: const HomePage(),
      ),
    );
  }
}
