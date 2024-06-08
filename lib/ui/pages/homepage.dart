import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_bloc.dart';
import 'package:intrapair_task/ui/widgets/CustomElevatedButton.dart';
import 'package:intrapair_task/ui/widgets/CustomTextFieldForm.dart';
import 'package:intrapair_task/ui/widgets/Header.dart';
import 'package:intrapair_task/ui/widgets/CustomTextfieldformWithIcon.dart';
import 'package:intrapair_task/ui/widgets/social_icon.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    CountryBloc countryBloc = context.read<CountryBloc>();
    countryBloc.fetchCountries();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(
              title: "Choose Your Country ",
              subTitle: "Please select your country to help us for",
              additionalText: 'give you a better experience',
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomTextFieldFormWithIcon(
                hintText: "Select Country",
                controller: TextEditingController(),
              ),
            ),
            SizedBox(height: 200),
            CustomElevatedButton(),
            SizedBox(height: 40,),
            SocialIcon()





          ],
        ),
      ),
    );
  }
}

