import 'package:flutter/material.dart';

class MyDescriptionText extends StatelessWidget {
  final String description;
  const MyDescriptionText({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        description,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
