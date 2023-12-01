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
            backgroundColor: Theme.of(context).cupertinoOverrideTheme?.primaryColor,
            minimumSize: const Size.fromHeight(50),
          ),
          onPressed: () {
            if (formKey.currentState!.validate()) {
            }
          },
          child: Text(
            label,
            style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).cardTheme.color
            ),
          ),
        ));
  }
}