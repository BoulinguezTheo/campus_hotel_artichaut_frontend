import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/hero.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/review_section.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../services/review_service.dart';

class MyHomepage extends StatelessWidget {

  MyHomepage({Key? key}) : super(key: key);
  final ReviewService reviewService = GetIt.instance<ReviewService>();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView( //const enlevée pour tester données statiques des reviews
      child: Column(
        children: <Widget>[
          MyHero(),
          MyReviewWidget(reviews : reviewService.reviews),
        ],
      ),
    );
  }
}
