import '../models/reviews_data.dart';

class ReviewService {
  final List<Review> _reviews = [
    Review(
      "Laurine",
      5,
      "\"Une escapade inoubliable en famille à l'hôtel L'artichaut! Le confort, le service et l'écoresponsabilité étaient au rendez-vous. Mes enfants ont adoré, et moi aussi. A refaire sans hésitation. \n#EnFamille\"",
    ),
    Review(
      "Bernard",
      2,
      "\"Inacceptable, les puces de lit sont partout, ma dulcinée n'a pas voulu rester la nuit! Par contre le jus d'orange était sympa.\"",
    ),
    Review(
      "Jjojo",
      4,
      "Inacceptable, les puces de lit sont partout, ma dulcinée n'a pas voulu rester la nuit! Par contre le jus d'orange était sympa.",
    ),
  ];

  List<Review> get reviews => _reviews;
}


