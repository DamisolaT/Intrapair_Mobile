import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrapair_task/bloc/country_bloc.dart';
import 'package:intrapair_task/ui/pages/selectpage.dart';
import 'package:intrapair_task/ui/widgets/CustomElevatedButton.dart';
import 'package:intrapair_task/ui/widgets/CustomTextFieldForm.dart';
import 'package:intrapair_task/ui/widgets/Header.dart';
import 'package:intrapair_task/ui/widgets/CustomTextfieldformWithIcon.dart';
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
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectPage()));
               },
               child: Container(
                   child: selectedCountries == null? Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Select Country"),
                     Icon(Icons.arrow_forward)
                   ],
                 ):
                 ListTile(
                   title: Text(selectedCountries.name),
                   trailing: Icon(Icons.arrow_forward),
                   leading: Image.network(selectedCountries.flag, height: 20,width: 40,),
                 )
               ),
             ),
            SizedBox(height: 200),
            Expanded(child: CustomElevatedButton()),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SocialIcon(),
            )





          ],
        ),
      ),
    );
  }
}


