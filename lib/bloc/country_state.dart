import 'package:equatable/equatable.dart';

class CountryState extends Equatable {
  final List<String> allCountries;
  final List<String> selectedCountries;

  CountryState({
    required this.allCountries,
    required this.selectedCountries,
    required List loadCountries,
  });

  @override
  List<Object?> get props => [allCountries, selectedCountries];

  factory CountryState.fromJson(Map<String, dynamic> json) {
    final List<dynamic> countries = json['countries'];
    final List<String> allCountries = countries.map<String>((country) => country['name']['common']).toList();
    // Assuming initially no countries are selected
    final List<String> selectedCountries = [];

    return CountryState(
      allCountries: allCountries,
      selectedCountries: selectedCountries,
      loadCountries: [],
    );
  }
}
