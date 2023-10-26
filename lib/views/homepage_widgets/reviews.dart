import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/reviews.widgets/reviewCard.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaled_size/scaled_size.dart';

class Reviews extends StatelessWidget {
  // final List<ReviewCard> reviewCards;
  // Reviews({Key? key, required this.reviewCards}) : super(key: key); // Liste dynamique

  final List<ReviewCard> reviews = [
    ReviewCard(userName: "Laurine", rating: 5, description: "\"Une escapade inoubliable en famille à l\'hôtel L\'artichaut! Le confort, le service et l\'écoresponsabilité étaient au rendez-vous. Mes enfants ont adoré, et moi aussi. A refaire sans hésitation. \n#EnFamille\""),
    ReviewCard(userName: "Bernard", rating: 2,description: "Inacceptable, les puces de lit sont partout, ma dulcinée n\'a pas voulu rester la nuit! Par contre le jus d'orange était sympa.")
  ];

  @override
  Widget build(BuildContext context) {
    Color boxColor = Theme.of(context).colorScheme.primary.withOpacity(0.7);
    return Container(
        width: MediaQuery.of(context).size.width * 0.95,
        margin: const EdgeInsets.only(top: 10, bottom: 40),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ConstantsApp.REVIEWS_TITLE,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(),
            ),
            SizedBox(height: 8),
        const SizedBox(height: 0),
        SingleChildScrollView(
          child: Column(
            children: reviews.map((review) {
              return Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Card(
                    child: ListTile(
                    leading: const Icon(Icons.star),
                    title: Text(review.userName),
                    subtitle: Text(review.description),
                  ),
                  )
                );
            }).toList(),
          ),
        )
            // Expanded(
            //   child: ListView.builder(
            //     shrinkWrap: true,
            //     // itemCount: reviewCards.length,
            //     itemCount: reviews.length, // Données statiques pour dev front
            //     itemBuilder: (context, index){
            //       return Card(
            //         child: ListTile(
            //           leading: Icon(Icons.star),
            //           // title: Text(reviewCards[index].userName),
            //           title: Text(reviews[index].userName), // Données statiques pour dev front
            //           // subtitle: Text(reviewCards[index].description),
            //           subtitle: Text(reviews[index].description), // Données statiques pour dev front
            //         ),
            //       );
            //     }
            //   )
            // )
          ],
        ));
  }
}
