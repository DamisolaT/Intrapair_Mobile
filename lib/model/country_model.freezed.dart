// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  @JsonKey(name: 'land_area')
  int get landArea => throw _privateConstructorUsedError;
  double get density => throw _privateConstructorUsedError;
  String get capital => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int population,
      @JsonKey(name: 'land_area') int landArea,
      double density,
      String capital,
      String currency,
      String flag});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? population = null,
    Object? landArea = null,
    Object? density = null,
    Object? capital = null,
    Object? currency = null,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      landArea: null == landArea
          ? _value.landArea
          : landArea // ignore: cast_nullable_to_non_nullable
              as int,
      density: null == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int population,
      @JsonKey(name: 'land_area') int landArea,
      double density,
      String capital,
      String currency,
      String flag});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? population = null,
    Object? landArea = null,
    Object? density = null,
    Object? capital = null,
    Object? currency = null,
    Object? flag = null,
  }) {
    return _then(_$CountryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      landArea: null == landArea
          ? _value.landArea
          : landArea // ignore: cast_nullable_to_non_nullable
              as int,
      density: null == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl(
      {required this.id,
      required this.name,
      required this.population,
      @JsonKey(name: 'land_area') required this.landArea,
      required this.density,
      required this.capital,
      required this.currency,
      required this.flag});

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int population;
  @override
  @JsonKey(name: 'land_area')
  final int landArea;
  @override
  final double density;
  @override
  final String capital;
  @override
  final String currency;
  @override
  final String flag;

  @override
  String toString() {
    return 'CountryModel(id: $id, name: $name, population: $population, landArea: $landArea, density: $density, capital: $capital, currency: $currency, flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.landArea, landArea) ||
                other.landArea == landArea) &&
            (identical(other.density, density) || other.density == density) &&
            (identical(other.capital, capital) || other.capital == capital) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, population, landArea,
      density, capital, currency, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements CountryModel {
  const factory _Country(
      {required final int id,
      required final String name,
      required final int population,
      @JsonKey(name: 'land_area') required final int landArea,
      required final double density,
      required final String capital,
      required final String currency,
      required final String flag}) = _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get population;
  @override
  @JsonKey(name: 'land_area')
  int get landArea;
  @override
  double get density;
  @override
  String get capital;
  @override
  String get currency;
  @override
  String get flag;
  @override
  @JsonKey(ignore: true)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
