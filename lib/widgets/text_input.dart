import 'package:flutter/material.dart';

class TextInputBuild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> handleChange;

  const TextInputBuild({
    super.key,
    required this.hintText,
    required this.icon,
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
