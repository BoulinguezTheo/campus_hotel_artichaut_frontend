import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  // VoidCallback onSaved;
  Function(String? value)? onSaved;
  final String label;
  final String hint;
  final Icon icon;

  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;
  final String field;

  InputField(
      {required this.onSaved,
      required this.label,
      required this.hint,
      required this.icon,
      required this.obscureText,
      required this.autocorrect,
      required this.enableSuggestions,
      required this.field,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: TextFormField(
          obscureText: obscureText,
          enableSuggestions: enableSuggestions,
          autocorrect: autocorrect,
          obscuringCharacter: "*",
          onSaved: onSaved,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label,
              labelStyle:
                   TextStyle(fontSize: Theme.of(context).textTheme.displayMedium?.fontSize, fontWeight: FontWeight.w600),
              prefixIcon: icon,
              hintText: hint),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Veuillez entrer une valeur valide';
            } else if (obscureText == true && value.length < 8) {
              return 'Au moins 8 caractères';
            } else if (label == "Email" && !value.contains('@')) {
              return 'Veuillez entrer un email valide';
            }
            return null;
          },
        ));
  }
}
