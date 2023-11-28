import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CallToActionConnexionButton extends StatelessWidget {
  final String label;
  final GoRouter router;
  final GlobalKey<FormState> formKey;
  final String email;
  final String password;

  const CallToActionConnexionButton({
    required this.label,
    required this.router,
    required this.formKey,
    required this.email,
    required this.password,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(224, 198, 77, 1),
            minimumSize: const Size.fromHeight(50),
          ),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              // Envoyer au back
            }
          },
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(255, 255, 255, 1)
            ),
          ),
        ));
  }
}