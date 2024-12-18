import 'package:flutter/material.dart';

class InscriptionInput extends StatelessWidget {
  final String label;
  final String hintText;
  final double borderRadius;
  final double margin;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  InscriptionInput({
    required this.label,
    required this.hintText,
    this.borderRadius = 10.0,
    this.margin = 8.0,
    this.backgroundColor = Colors.grey,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          filled: true,
          fillColor: backgroundColor.withOpacity(0.1),
        ),
      ),
    );
  }
}
