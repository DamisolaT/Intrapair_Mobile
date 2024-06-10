

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/country_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchpageState();
}

class _SearchpageState extends State<SearchPage> {


  @override
  Widget build(BuildContext context) {
    var countryBloc = context.watch<CountryBloc>();
    var listOfCountries = countryBloc.state.allCountries;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.only(top: 35),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Select Country",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              IconButton(
                  icon: GestureDetector(
                    onTap: (){},
                    child: Image.asset(
                      'assets/images/cancel_icon.png',
                      height: 15,
                      color: Colors.black,
                    ),
                  ), // Use your image here
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),


            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white54,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),

                ),
                hintText: "Search Country",
                prefixIcon: Icon(Icons.search)

              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,  // Add this line
              itemCount: listOfCountries.length,
              itemBuilder: (BuildContext context, int index) {
                final country = listOfCountries[index];
                return ListTile(
                  title: Text(country.name),
                  onTap: () {
                    countryBloc.setSelectedCountry(country);
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        ],
      ),),
    );
  }
}
