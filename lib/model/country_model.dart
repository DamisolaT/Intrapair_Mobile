import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required int id,
    required String name,
    required int population,
    @JsonKey(name: 'land_area') required int landArea,
    required double density,
    required String capital,
    required String currency,
    required String flag,
  }) = _Country;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}
