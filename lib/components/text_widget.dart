import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String? hint;
  String? label;
  Widget? icon;
  TextEditingController? controller;

  TextWidget(
    this.hint,
    this.label,
    this.icon,
    this.controller,
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: icon,
      ),
      controller: controller,
    );
  }
}
