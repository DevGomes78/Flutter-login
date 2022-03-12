import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String? hintText;
  String? labelText;
  Widget? icon;
  TextEditingController? controller;
  bool ObscureText;

  TextWidget(
    this.hintText,
    this.labelText,
    this.icon,
    this.controller, {
    this.ObscureText = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: icon,
      ),
      controller: controller,
      obscureText: ObscureText,
    );
  }
}
