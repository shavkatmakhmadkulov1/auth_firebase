import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.text, required this.onPressed});

  final String text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      child: Text(text, style: TextStyle(fontSize: 17.0, color: Colors.white12)),
      onPressed: onPressed,
    );
  }
}