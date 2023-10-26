import 'package:flutter/material.dart';

class ReviewCard {
  final String userName;
  final double rating;
  final String description;

  ReviewCard({required this.userName, required this.rating, required this.description});
}

class Reviews extends StatelessWidget {
  final List<ReviewCard> reviewCards;

  const Reviews({super.key, Key, required this.reviewCards});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviewCards.length,
      itemBuilder: (context, index) {
        final review = reviewCards[index];
        return Card(
          child: ListTile(
            leading: const Icon(Icons.star),
            title: Text(review.userName),
            subtitle: Text(review.description),
          ),
        );
      },
    );
  }
}
