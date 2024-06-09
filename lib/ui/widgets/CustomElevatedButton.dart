import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_bloc.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var countryState = context.watch<CountryBloc>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),

          ),
          backgroundColor:countryState.selectedCountries == null? Colors.white:Colors.green,
          elevation: 0, // Remove the button's elevation
        ),
        child: const Text(
          "Go ahead",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black45,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
