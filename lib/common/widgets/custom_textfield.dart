import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller which is required will be set in the CustomTextField of the auth_screen.dart file
      controller: controller,
      // decoration: how is it going to look like, InputDecoration: we want some borders to show up
      decoration: InputDecoration(
          // hintText is also set as controller
          hintText: hintText,
          // we want the borders to show up outline
          border: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black38,
          )),
          // when TextFormField is inactive
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black38,
          ))),
      validator: (val) {},
    );
  }
}
