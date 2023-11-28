import 'package:campus_hotel_artichaut_frontend/utils/cta_signup_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../utils/constants.dart';
import '../../utils/cta_connexion_button.dart';
import '../inscription_widgets/input_field.dart';
import 'package:scaled_size/scaled_size.dart';

class Connexion extends StatefulWidget {
  final GoRouter router;
  const Connexion({Key? key, required this.router}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.vh),
      child: Form(
        key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom : 3.vh),
              child: Text(
                  'Connexion',
                  style: Theme.of(context).textTheme.titleLarge
              ),
            ),
          ),
          InputField(
            label: ConstantsApp.LABEL_EMAIL,
            hint: ConstantsApp.HINT_EMAIL,
            icon: Icon(Icons.email),
            obscureText: false,
            autocorrect: true,
            enableSuggestions: true,
          ),
          InputField(
            label: ConstantsApp.LABEL_PASSWORD,
            hint: ConstantsApp.HINT_PASSWORD,
            icon: Icon(Icons.password_outlined),
            obscureText: true,
            autocorrect: false,
            enableSuggestions: false,
          ),
          CallToActionConnexionButton(
            label: ConstantsApp.CONNEXION_BTN,
            router: widget.router,
            formKey: _formKey,
            email: _email ?? '',
            password: _password ?? '',
          ),
          CallToActionSignUpButton(
            label: ConstantsApp.INSCRIPTION_BTN,
            router: widget.router,
          ),
        ],
      ),
    )
    );
  }

  Future<void> sendDataToBackend(String email, String password) async {
    // Logique d'envoi au Back
  }

}
