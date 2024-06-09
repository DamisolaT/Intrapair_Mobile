import 'package:equatable/equatable.dart';
import 'package:intrapair_task/model/country_model.dart';

class CountryState extends Equatable {
  final List<CountryModel> allCountries;
  final CountryModel? selectedCountries;

  CountryState({
     this.allCountries = const [],
     this.selectedCountries,

  });

  @override
  List<Object?> get props => [allCountries, selectedCountries];

  CountryState copyWith({
    List<CountryModel>? allCountries,
    CountryModel? selectedCountries,
  }) {
    return CountryState(
      allCountries: allCountries ?? this.allCountries,
      selectedCountries: selectedCountries ?? this.selectedCountries,

    );
  }
}