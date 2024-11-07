// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(name: 'weather')
  List<FWeather> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  FMain get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  FWind get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weather') List<FWeather> weather,
      @JsonKey(name: 'main') FMain main,
      @JsonKey(name: 'wind') FWind wind,
      @JsonKey(name: 'name') String name});

  $FMainCopyWith<$Res> get main;
  $FWindCopyWith<$Res> get wind;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? main = null,
    Object? wind = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<FWeather>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as FMain,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as FWind,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FMainCopyWith<$Res> get main {
    return $FMainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FWindCopyWith<$Res> get wind {
    return $FWindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weather') List<FWeather> weather,
      @JsonKey(name: 'main') FMain main,
      @JsonKey(name: 'wind') FWind wind,
      @JsonKey(name: 'name') String name});

  @override
  $FMainCopyWith<$Res> get main;
  @override
  $FWindCopyWith<$Res> get wind;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? main = null,
    Object? wind = null,
    Object? name = null,
  }) {
    return _then(_$WeatherModelImpl(
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<FWeather>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as FMain,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as FWind,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeatherModelImpl with DiagnosticableTreeMixin implements _WeatherModel {
  const _$WeatherModelImpl(
      {@JsonKey(name: 'weather') required final List<FWeather> weather,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'wind') required this.wind,
      @JsonKey(name: 'name') required this.name})
      : _weather = weather;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  final List<FWeather> _weather;
  @override
  @JsonKey(name: 'weather')
  List<FWeather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'main')
  final FMain main;
  @override
  @JsonKey(name: 'wind')
  final FWind wind;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherModel(weather: $weather, main: $main, wind: $wind, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherModel'))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('wind', wind))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_weather), main, wind, name);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {@JsonKey(name: 'weather') required final List<FWeather> weather,
      @JsonKey(name: 'main') required final FMain main,
      @JsonKey(name: 'wind') required final FWind wind,
      @JsonKey(name: 'name') required final String name}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  @JsonKey(name: 'weather')
  List<FWeather> get weather;
  @override
  @JsonKey(name: 'main')
  FMain get main;
  @override
  @JsonKey(name: 'wind')
  FWind get wind;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FWeather _$FWeatherFromJson(Map<String, dynamic> json) {
  return _FWeather.fromJson(json);
}

/// @nodoc
mixin _$FWeather {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  String get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this FWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FWeatherCopyWith<FWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FWeatherCopyWith<$Res> {
  factory $FWeatherCopyWith(FWeather value, $Res Function(FWeather) then) =
      _$FWeatherCopyWithImpl<$Res, FWeather>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'main') String main,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'icon') String icon});
}

/// @nodoc
class _$FWeatherCopyWithImpl<$Res, $Val extends FWeather>
    implements $FWeatherCopyWith<$Res> {
  _$FWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FWeatherImplCopyWith<$Res>
    implements $FWeatherCopyWith<$Res> {
  factory _$$FWeatherImplCopyWith(
          _$FWeatherImpl value, $Res Function(_$FWeatherImpl) then) =
      __$$FWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'main') String main,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'icon') String icon});
}

/// @nodoc
class __$$FWeatherImplCopyWithImpl<$Res>
    extends _$FWeatherCopyWithImpl<$Res, _$FWeatherImpl>
    implements _$$FWeatherImplCopyWith<$Res> {
  __$$FWeatherImplCopyWithImpl(
      _$FWeatherImpl _value, $Res Function(_$FWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of FWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$FWeatherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FWeatherImpl with DiagnosticableTreeMixin implements _FWeather {
  const _$FWeatherImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'icon') required this.icon});

  factory _$FWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$FWeatherImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'main')
  final String main;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'icon')
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FWeather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FWeather'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FWeatherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  /// Create a copy of FWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FWeatherImplCopyWith<_$FWeatherImpl> get copyWith =>
      __$$FWeatherImplCopyWithImpl<_$FWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FWeatherImplToJson(
      this,
    );
  }
}

abstract class _FWeather implements FWeather {
  const factory _FWeather(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'main') required final String main,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'icon') required final String icon}) = _$FWeatherImpl;

  factory _FWeather.fromJson(Map<String, dynamic> json) =
      _$FWeatherImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'main')
  String get main;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'icon')
  String get icon;

  /// Create a copy of FWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FWeatherImplCopyWith<_$FWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FMain _$FMainFromJson(Map<String, dynamic> json) {
  return _FMain.fromJson(json);
}

/// @nodoc
mixin _$FMain {
  @JsonKey(name: 'temp')
  num get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  num get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  num get humidity => throw _privateConstructorUsedError;

  /// Serializes this FMain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FMain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FMainCopyWith<FMain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FMainCopyWith<$Res> {
  factory $FMainCopyWith(FMain value, $Res Function(FMain) then) =
      _$FMainCopyWithImpl<$Res, FMain>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp') num temp,
      @JsonKey(name: 'feels_like') num feelsLike,
      @JsonKey(name: 'humidity') num humidity});
}

/// @nodoc
class _$FMainCopyWithImpl<$Res, $Val extends FMain>
    implements $FMainCopyWith<$Res> {
  _$FMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FMain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as num,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FMainImplCopyWith<$Res> implements $FMainCopyWith<$Res> {
  factory _$$FMainImplCopyWith(
          _$FMainImpl value, $Res Function(_$FMainImpl) then) =
      __$$FMainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp') num temp,
      @JsonKey(name: 'feels_like') num feelsLike,
      @JsonKey(name: 'humidity') num humidity});
}

/// @nodoc
class __$$FMainImplCopyWithImpl<$Res>
    extends _$FMainCopyWithImpl<$Res, _$FMainImpl>
    implements _$$FMainImplCopyWith<$Res> {
  __$$FMainImplCopyWithImpl(
      _$FMainImpl _value, $Res Function(_$FMainImpl) _then)
      : super(_value, _then);

  /// Create a copy of FMain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? humidity = null,
  }) {
    return _then(_$FMainImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as num,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FMainImpl with DiagnosticableTreeMixin implements _FMain {
  const _$FMainImpl(
      {@JsonKey(name: 'temp') required this.temp,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      @JsonKey(name: 'humidity') required this.humidity});

  factory _$FMainImpl.fromJson(Map<String, dynamic> json) =>
      _$$FMainImplFromJson(json);

  @override
  @JsonKey(name: 'temp')
  final num temp;
  @override
  @JsonKey(name: 'feels_like')
  final num feelsLike;
  @override
  @JsonKey(name: 'humidity')
  final num humidity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FMain(temp: $temp, feelsLike: $feelsLike, humidity: $humidity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FMain'))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('feelsLike', feelsLike))
      ..add(DiagnosticsProperty('humidity', humidity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FMainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, humidity);

  /// Create a copy of FMain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FMainImplCopyWith<_$FMainImpl> get copyWith =>
      __$$FMainImplCopyWithImpl<_$FMainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FMainImplToJson(
      this,
    );
  }
}

abstract class _FMain implements FMain {
  const factory _FMain(
      {@JsonKey(name: 'temp') required final num temp,
      @JsonKey(name: 'feels_like') required final num feelsLike,
      @JsonKey(name: 'humidity') required final num humidity}) = _$FMainImpl;

  factory _FMain.fromJson(Map<String, dynamic> json) = _$FMainImpl.fromJson;

  @override
  @JsonKey(name: 'temp')
  num get temp;
  @override
  @JsonKey(name: 'feels_like')
  num get feelsLike;
  @override
  @JsonKey(name: 'humidity')
  num get humidity;

  /// Create a copy of FMain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FMainImplCopyWith<_$FMainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FWind _$FWindFromJson(Map<String, dynamic> json) {
  return _FWind.fromJson(json);
}

/// @nodoc
mixin _$FWind {
  @JsonKey(name: 'speed')
  num get speed => throw _privateConstructorUsedError;

  /// Serializes this FWind to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FWind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FWindCopyWith<FWind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FWindCopyWith<$Res> {
  factory $FWindCopyWith(FWind value, $Res Function(FWind) then) =
      _$FWindCopyWithImpl<$Res, FWind>;
  @useResult
  $Res call({@JsonKey(name: 'speed') num speed});
}

/// @nodoc
class _$FWindCopyWithImpl<$Res, $Val extends FWind>
    implements $FWindCopyWith<$Res> {
  _$FWindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FWind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FWindImplCopyWith<$Res> implements $FWindCopyWith<$Res> {
  factory _$$FWindImplCopyWith(
          _$FWindImpl value, $Res Function(_$FWindImpl) then) =
      __$$FWindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'speed') num speed});
}

/// @nodoc
class __$$FWindImplCopyWithImpl<$Res>
    extends _$FWindCopyWithImpl<$Res, _$FWindImpl>
    implements _$$FWindImplCopyWith<$Res> {
  __$$FWindImplCopyWithImpl(
      _$FWindImpl _value, $Res Function(_$FWindImpl) _then)
      : super(_value, _then);

  /// Create a copy of FWind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_$FWindImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FWindImpl with DiagnosticableTreeMixin implements _FWind {
  const _$FWindImpl({@JsonKey(name: 'speed') required this.speed});

  factory _$FWindImpl.fromJson(Map<String, dynamic> json) =>
      _$$FWindImplFromJson(json);

  @override
  @JsonKey(name: 'speed')
  final num speed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FWind(speed: $speed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FWind'))
      ..add(DiagnosticsProperty('speed', speed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FWindImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  /// Create a copy of FWind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FWindImplCopyWith<_$FWindImpl> get copyWith =>
      __$$FWindImplCopyWithImpl<_$FWindImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FWindImplToJson(
      this,
    );
  }
}

abstract class _FWind implements FWind {
  const factory _FWind({@JsonKey(name: 'speed') required final num speed}) =
      _$FWindImpl;

  factory _FWind.fromJson(Map<String, dynamic> json) = _$FWindImpl.fromJson;

  @override
  @JsonKey(name: 'speed')
  num get speed;

  /// Create a copy of FWind
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FWindImplCopyWith<_$FWindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
