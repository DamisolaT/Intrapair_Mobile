import 'package:flutter/material.dart';
import 'package:intrapair_task/bloc/country_bloc.dart';
import 'package:provider/provider.dart'; // Add this line

class GoaheadButton extends StatefulWidget {
  @override
  State<GoaheadButton> createState() => _GoaheadButtonState();
}

class _GoaheadButtonState extends State<GoaheadButton> {
  @override
  Widget build(BuildContext context) {
    var countryState = context.watch<CountryBloc>().state;
    return GestureDetector(
      onTap: () {
        // Define button action here
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          decoration: BoxDecoration(
            color: countryState.selectedCountries == null? Colors.white : Colors.green,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              'Go Ahead',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w700,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
