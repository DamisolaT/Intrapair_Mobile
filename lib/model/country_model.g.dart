// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      population: (json['population'] as num).toInt(),
      landArea: (json['land_area'] as num).toInt(),
      density: (json['density'] as num).toDouble(),
      capital: json['capital'] as String,
      currency: json['currency'] as String,
      flag: json['flag'] as String,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'population': instance.population,
      'land_area': instance.landArea,
      'density': instance.density,
      'capital': instance.capital,
      'currency': instance.currency,
      'flag': instance.flag,
    };
