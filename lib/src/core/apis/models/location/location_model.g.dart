// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      name: json['name'] as String,
      lat: json['lat'] as num,
      lon: json['lon'] as num,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'state': instance.state,
    };
