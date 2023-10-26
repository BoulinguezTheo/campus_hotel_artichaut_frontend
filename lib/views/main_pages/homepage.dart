import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/hero.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/reviews.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( //const enlevée pour tester données statiques des reviews
      child: Column(
        children: <Widget>[
          MyHero(),
          Reviews(),
        ],
      ),
    );
  }
}
