import 'package:flutter/material.dart';

class CommmonInput extends StatelessWidget {
  final String text;
  final Icon? icon;
  final TextInputType? keyboardType;
  const CommmonInput(
      {super.key, required this.text, this.icon, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: TextField(
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
            labelText: text,
            border: OutlineInputBorder(),
            prefixIcon: icon,
          ),
        ));
  }
}
