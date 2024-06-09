import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_state.dart';
import 'package:intrapair_task/model/country_model.dart';
import 'package:intrapair_task/repository/country_repository.dart';

class CountryBloc extends Cubit<CountryState> {
  final CountryRepository countryRepository;

  CountryBloc(this.countryRepository) : super(CountryState()){
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    try {
      List<CountryModel> country = await countryRepository.getCountries();
      print(country);
      emit(state.copyWith(allCountries: country));
    } catch (e,s) {
      // Handle errors
      print("Error fetching countries: $e");
      print(s);

    }
  }
  void setSelectedCountry(CountryModel country) async {
    emit(state.copyWith(selectedCountries: country));
  }
}
