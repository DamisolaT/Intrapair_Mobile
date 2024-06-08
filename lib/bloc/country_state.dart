import 'package:equatable/equatable.dart';
import 'package:intrapair_task/model/country_model.dart';

class CountryState extends Equatable {
  final List<CountryModel> allCountries;
  final List<CountryModel> selectedCountries;

  CountryState({
    required this.allCountries,
    required this.selectedCountries,
    required List loadCountries,
  });

  @override
  List<Object?> get props => [allCountries, selectedCountries];

  CountryState copyWith({
    List<CountryModel>? allCountries,
    List<CountryModel>? selectedCountries,
  }) {
    return CountryState(
      allCountries: allCountries ?? this.allCountries,
      selectedCountries: selectedCountries ?? this.selectedCountries,
      loadCountries: [],
    );
  }
}