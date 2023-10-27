import 'package:flutter/material.dart';

class CallToActionButtonLarge extends StatelessWidget {
  final String label;

  const CallToActionButtonLarge({required this.label, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(224, 198, 77, 1),
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: () {},
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(255, 255, 255, 1)
            ),
          ),
        ));
  }
}