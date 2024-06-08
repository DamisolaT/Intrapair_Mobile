import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_state.dart';
import 'package:intrapair_task/repository/country_repository.dart';

class CountryBloc extends Cubit<CountryState> {
  final CountryRepository countryRepository;

  CountryBloc(this.countryRepository) : super(CountryState(
    allCountries: [],
    selectedCountries: [],
    loadCountries: [],
  ));

  Future<void> fetchCountries() async {
    try {

      await countryRepository.getCountries();
    } catch (e) {
      // Handle errors
      print("Error fetching countries: $e");
    }
  }
}
