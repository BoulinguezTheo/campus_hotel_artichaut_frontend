import 'package:flutter/material.dart';

class CallToActionButtonLarge extends StatelessWidget {
  VoidCallback onPressed;
  final String label;

  CallToActionButtonLarge(
      {required this.label,
        required this.onPressed,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Theme.of(context).cupertinoOverrideTheme?.primaryColor,
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.displayMedium?.fontSize,
              color: Theme.of(context).cardTheme.color,
            ),
          ),
        ));
  }
}
