import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const BuildButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,

      style: OutlinedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        side: BorderSide(color: Colors.transparent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
      ),

      child: Text(text),
    );
  }
}
