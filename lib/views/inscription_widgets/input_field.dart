import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icon;

  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  const InputField({required this.label, required this.hint, required this.icon, required this.obscureText, required this.autocorrect, required this.enableSuggestions, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: TextField(
        obscureText: obscureText,
        enableSuggestions: enableSuggestions,
        autocorrect: autocorrect,
        obscuringCharacter: "*",
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
            labelStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            prefixIcon: icon,
            hintText: hint),
      ),
    );
  }

}