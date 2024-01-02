import 'package:flutter/material.dart';

class CustomDoubleText extends StatelessWidget {
  final Text firstText;
  final Text secondText;

  CustomDoubleText({required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       firstText,
       const SizedBox(height: 2), 
       secondText
      ],
    );
  }
}
