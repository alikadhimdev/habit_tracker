import 'package:flutter/material.dart';

class TextInputBuild extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final ValueChanged<String> handleChange;

  const TextInputBuild({
    super.key,
    required this.hintText,
    this.icon,
    required this.handleChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: handleChange,
      decoration: InputDecoration(
        fillColor: Colors.blue[50],
        filled: true,
        focusColor: Colors.red,
        prefixIcon: Icon(icon),
        prefixIconColor: Colors.grey,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
