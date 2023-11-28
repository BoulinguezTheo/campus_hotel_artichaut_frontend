import 'package:flutter/material.dart';

class MyDescriptionText extends StatelessWidget {
  const MyDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        "Un havre de paix au cœur de la ville. Notre établissement prestigieux est synonyme d'élégance, de raffinement et de service exceptionnel depuis de nombreuses années.",
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
