import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/reviews.widgets/reviewCard.dart';
import 'package:scaled_size/scaled_size.dart';

import '../../models/reviews_data.dart';

class MyReviewWidget extends StatelessWidget {
  final List<Review> reviews;

  const MyReviewWidget({Key? key, required this.reviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.vh),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(1.5.vh),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(3.0),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ConstantsApp.REVIEWS_TITLE,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 1.vh),
            ListView.builder(
              shrinkWrap: true,
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                final review = reviews[index];
                    return ReviewCard(
                      userName: review.userName,
                      rating: review.rating,
                      description: review.description,
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}

