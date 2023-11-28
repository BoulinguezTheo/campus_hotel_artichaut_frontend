import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CallToActionSignUpButton extends StatelessWidget {
  final String label;
  final GoRouter router;

  const CallToActionSignUpButton({
    required this.label,
    required this.router,
    Key? key})
      : super(key: key);

  goToInscriptionRoute(BuildContext context){
    router.go(ConstantsApp.INSCRIPTION_ROUTE);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            minimumSize: const Size.fromHeight(50),
          ),
          onPressed: () {
            goToInscriptionRoute(context);
          },
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
            ),
          ),
        ));
  }
}