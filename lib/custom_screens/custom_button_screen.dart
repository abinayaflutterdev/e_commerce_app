import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButtonScreen extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;

  const CustomButtonScreen({
    super.key,
    required this.buttonText,
    required this.onPressed

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText));
  }
}
