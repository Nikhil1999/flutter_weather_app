import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  @JsonSerializable(explicitToJson: true)
  const factory LocationModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'lat') required num lat,
    @JsonKey(name: 'lon') required num lon,
    @JsonKey(name: 'state') String? state,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, Object?> json) =>
      _$LocationModelFromJson(json);
}
