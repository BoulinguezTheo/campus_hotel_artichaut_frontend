import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/description.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/hero.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/review_section.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../services/review_service.dart';
import 'package:scaled_size/scaled_size.dart';

class MyHomepage extends StatelessWidget {

  MyHomepage({Key? key}) : super(key: key);
  final ReviewService reviewService = GetIt.instance<ReviewService>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const MyHero(),
          SizedBox(
            height: 1.5.vh,
          ),
          const MyDescription(),
          SizedBox(
            height: 1.5.vh,
          ),
          MyReviewWidget(reviews : reviewService.reviews),
        ],
      ),
    );
  }
}
