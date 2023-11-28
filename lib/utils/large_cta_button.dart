import 'package:flutter/material.dart';

class CallToActionButtonLarge extends StatelessWidget {
  final String label;
  VoidCallback onPressed;

  CallToActionButtonLarge(
      {required this.label, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(224, 198, 77, 1),
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 24, color: Color.fromRGBO(255, 255, 255, 1)),
          ),
        ));
  }
}
