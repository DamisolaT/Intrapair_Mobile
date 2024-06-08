import 'package:flutter/material.dart';

class CustomTextFieldForm extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  final TextInputType? keyboardType;

  const CustomTextFieldForm({
    Key? key, // Change super.key to Key? key
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,

  }) : super(key: key); // Call super with key argument

  @override
  State<CustomTextFieldForm> createState() => _CustomTextFieldFormState();
}

class _CustomTextFieldFormState extends State<CustomTextFieldForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // Set the background color to white
        hintText: widget.hintText,
        hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 15
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none, // Remove the default border
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black12, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black26, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black26, width: 2.0),
        ),

      ),
      style: const TextStyle(color: Colors.black),
    );
  }
}
