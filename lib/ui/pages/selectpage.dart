import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_bloc.dart';
import 'package:intrapair_task/ui/widgets/CustomTextFieldForm.dart';
import 'package:intrapair_task/ui/widgets/CustomTextfieldformWithIcon.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {


  @override
  Widget build(BuildContext context) {
    var listOfCountries = context.watch<CountryBloc>().state.allCountries;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,// Remove the back icon
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
            icon: Image.asset(
              'assets/images/cancel_icon.png',
              height: 15,
              color: Colors.black,
            ), // Use your image here
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomTextFieldForm(
          hintText: 'Select Country',
          controller: TextEditingController(),
        ),
      ), // Placeholder for body content
    );
  }
}