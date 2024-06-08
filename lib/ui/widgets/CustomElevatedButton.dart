
import 'package:flutter/material.dart';
import 'package:intrapair_task/ui/pages/selectpage.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({
    super.key,
  });

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12), // Add border color
                borderRadius: BorderRadius.circular(8.0), // Adjust the value as needed for the desired circular shape
              ),
              child: ElevatedButton(
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectPage()
                 ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0, // Remove the button's elevation
                ),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Go ahead",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
