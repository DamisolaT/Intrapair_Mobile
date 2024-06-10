import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_bloc.dart';
import 'package:intrapair_task/ui/widgets/country_textfield.dart';
import 'package:intrapair_task/ui/widgets/country_textfieldicon.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    var countryBloc = context.watch<CountryBloc>();
    var listOfCountries = countryBloc.state.allCountries;


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white, // Remove the back icon
        title: Row(
          children: [
            Text(
              "Select Country",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CountryTextField(
              hintText: 'Select Country',
              controller: TextEditingController(),
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
        ),
      ), // Placeholder for body content
    );
  }
}
