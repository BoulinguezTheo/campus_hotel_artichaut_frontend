import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/hero.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        MyHero(),
      ],
    );
  }
}
