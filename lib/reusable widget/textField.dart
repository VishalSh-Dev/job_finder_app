import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller;
  String hint;
  bool isPassword;
  TextInputType inputType;

  MyTextField({
    required this.hint,
    required this.controller,
    required this.inputType,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          focusColor: Color.fromARGB(241, 255, 107, 107),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(241, 255, 107, 107)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: hint,
          fillColor: Colors.transparent,
        ),
        obscureText: isPassword,
        keyboardType: inputType,
      ),
    );
  }
}