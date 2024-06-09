import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final String subTitle;
  final String additionalText; // Add a new field for the additional text

  const Header({
    super.key,
    required this.title,
    required this.subTitle,
    required this.additionalText, // Add this parameter to the constructor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 90.0), // Adjust the top padding value as needed
          child: Center(
            child: Image.asset("assets/images/location_icon.png", height: 50,),
          ),
        ),
        const SizedBox(height: 50), // Space between image and text
        Text(
          title, // Adjust the text as needed
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black26,
            fontWeight: FontWeight.w700,
          ),
        ),

        Text(
          additionalText, // New additional text
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black26,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
