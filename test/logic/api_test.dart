import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather/src/core/apis/api_helper.dart';
import 'package:weather/src/core/apis/models/location/location_model.dart';
import 'package:weather/src/core/apis/models/weather/weather_model.dart';
import 'package:weather/src/core/configs/api_config.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
@GenerateNiceMocks([MockSpec<Response>()])
import 'api_test.mocks.dart';

void main() {
  test('Test Weather Info', () async {
    WeatherModel example = const WeatherModel(
      weather: [
        FWeather(
          id: 1,
          main: 'Cloudy',
          description: 'Cloudy',
          icon: 'Icon',
        ),
      ],
      main: FMain(
        temp: 30.5,
        feelsLike: 32.9,
        humidity: 35,
      ),
      wind: FWind(speed: 3.5),
      name: 'Test City',
    );

    MockDio dio = MockDio();
    when(dio.get(
            'https://api.openweathermap.org/data/2.5/weather?lat=1.0&lon=1.0&appid=${ApiConfig.weatherKey}&units=metric'))
        .thenAnswer((_) async {
      MockResponse response = MockResponse();
      dynamic data = example.toJson();
      when(response.data).thenAnswer((_) => data);
      return response;
    });

    ApiHelper.init(dio);

    var result = await ApiHelper.getWeatherInfo(lat: 1, lng: 1);
    String resultStr = jsonEncode(result.toJson()).toString();
    String exampleStr = jsonEncode(example.toJson()).toString();

    expect(exampleStr, resultStr);
  });

  test('Test List Location', () async {
    LocationModel example = const LocationModel(
      lat: 1.0,
      lon: 1.0,
      name: 'Test City',
      state: 'Test State',
    );

    MockDio dio = MockDio();
    when(dio.get(
            'https://api.openweathermap.org/geo/1.0/direct?q=test&limit=5&appid=${ApiConfig.weatherKey}'))
        .thenAnswer((_) async {
      MockResponse response = MockResponse();
      dynamic data = [example.toJson()];
      when(response.data).thenAnswer((_) => data);
      return response;
    });

    ApiHelper.init(dio);

    var result = await ApiHelper.getLocations(query: 'test');
    String resultStr = jsonEncode(result.first.toJson()).toString();
    String exampleStr = jsonEncode(example.toJson()).toString();

    expect(exampleStr, resultStr);
  });
}
