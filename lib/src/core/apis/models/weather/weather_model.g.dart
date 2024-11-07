// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => FWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: FMain.fromJson(json['main'] as Map<String, dynamic>),
      wind: FWind.fromJson(json['wind'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'main': instance.main.toJson(),
      'wind': instance.wind.toJson(),
      'name': instance.name,
    };

_$FWeatherImpl _$$FWeatherImplFromJson(Map<String, dynamic> json) =>
    _$FWeatherImpl(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$FWeatherImplToJson(_$FWeatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$FMainImpl _$$FMainImplFromJson(Map<String, dynamic> json) => _$FMainImpl(
      temp: json['temp'] as num,
      feelsLike: json['feels_like'] as num,
      humidity: json['humidity'] as num,
    );

Map<String, dynamic> _$$FMainImplToJson(_$FMainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'humidity': instance.humidity,
    };

_$FWindImpl _$$FWindImplFromJson(Map<String, dynamic> json) => _$FWindImpl(
      speed: json['speed'] as num,
    );

Map<String, dynamic> _$$FWindImplToJson(_$FWindImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
    };
