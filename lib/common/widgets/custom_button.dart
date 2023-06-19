import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        // double.infinity is for the width, while 50 is for the height
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        text,
      ),
    );
  }
}
