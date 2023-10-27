import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/hero.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/review_section.dart';
import 'package:flutter/material.dart';
import 'package:campus_hotel_artichaut_frontend/models/reviews_data.dart';

import '../../services/review_service.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final reviewService = ReviewService();
    final reviews = reviewService.reviews;

    return SingleChildScrollView( //const enlevée pour tester données statiques des reviews
      child: Column(
        children: <Widget>[
          MyHero(),
          MyReviewWidget(reviews : reviews),
        ],
      ),
    );
  }
}
