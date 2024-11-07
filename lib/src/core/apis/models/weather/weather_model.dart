import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherModel({
    @JsonKey(name: 'weather') required List<FWeather> weather,
    @JsonKey(name: 'main') required FMain main,
    @JsonKey(name: 'wind') required FWind wind,
    @JsonKey(name: 'name') required String name,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, Object?> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class FWeather with _$FWeather {
  @JsonSerializable(explicitToJson: true)
  const factory FWeather({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'main') required String main,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'icon') required String icon,
  }) = _FWeather;

  factory FWeather.fromJson(Map<String, Object?> json) =>
      _$FWeatherFromJson(json);
}

@freezed
class FMain with _$FMain {
  @JsonSerializable(explicitToJson: true)
  const factory FMain({
    @JsonKey(name: 'temp') required num temp,
    @JsonKey(name: 'feels_like') required num feelsLike,
    @JsonKey(name: 'humidity') required num humidity,
  }) = _FMain;

  factory FMain.fromJson(Map<String, Object?> json) => _$FMainFromJson(json);
}

@freezed
class FWind with _$FWind {
  @JsonSerializable(explicitToJson: true)
  const factory FWind({
    @JsonKey(name: 'speed') required num speed,
  }) = _FWind;

  factory FWind.fromJson(Map<String, Object?> json) => _$FWindFromJson(json);
}
