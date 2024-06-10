import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_bloc.dart';
import 'package:intrapair_task/ui/pages/searchpage.dart';
import 'package:intrapair_task/ui/pages/selectpage.dart';

import 'package:intrapair_task/ui/widgets/country_textfield.dart';
import 'package:intrapair_task/ui/widgets/header.dart';
import 'package:intrapair_task/ui/widgets/country_textfieldicon.dart';
import 'package:intrapair_task/ui/widgets/goahead_button.dart';
import 'package:intrapair_task/ui/widgets/social_icon.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    CountryBloc countryBloc = context.watch<CountryBloc>();

    var selectedCountries = countryBloc.state.selectedCountries;

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
             GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
               },
               child:Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Container(

                   decoration: BoxDecoration(
                     color: Colors.white,
                     border: Border.all(color: Colors.black12),
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                   child: selectedCountries == null
                       ? Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("Select Country"),
                       ),
                       Icon(Icons.arrow_forward),
                     ],
                   )
                       : ListTile(
                     title: Text(selectedCountries.name),
                     trailing: Icon(Icons.arrow_forward),
                     leading: Image.network(
                       selectedCountries.flag,
                       height: 20,
                       width: 40,
                     ),
                   ),
                 ),
               ),

             ),
            SizedBox(height: 200,),
            GoaheadButton(),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SocialIcon(),
            )





          ],
        ),
      ),
    );
  }
}


