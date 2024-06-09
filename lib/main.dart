import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_bloc.dart'; // Import your Bloc file

import 'package:intrapair_task/repository/country_repository.dart'; // Import the repository
import 'package:intrapair_task/ui/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countryRepository = CountryRepository(); // Create the repository instance
    return BlocProvider(
      create: (context) => CountryBloc(countryRepository),
      lazy: false,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Homepage(),
      ),
    );
  }
}
