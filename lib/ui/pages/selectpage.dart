import 'package:flutter/material.dart';
import 'package:intrapair_task/ui/widgets/CustomTextFieldForm.dart';
import 'package:intrapair_task/ui/widgets/CustomTextfieldformWithIcon.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key); // Added 'super' to the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the back icon
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
