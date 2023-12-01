import 'package:campus_hotel_artichaut_frontend/utils/cta_signup_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../services/http_service.dart';
import '../../utils/constants.dart';
import '../../utils/cta_connexion_button.dart';
import '../../utils/large_cta_button.dart';
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

  late String email;
  late String password;

  void onSaved(value, field) {
    setState(() {
      if (field == "email") {
        email = value;
      } else {
        password = value;
      }
    });
  }

  void onPressed() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      HttpService httpService = HttpService();
      Future<bool> responseIsSuccess = httpService.logIn(email, password);
      if (await responseIsSuccess) {
        context.go(ConstantsApp.HOMEPAGE_ROUTE);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Connexion',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'PlayfairDisplay',
                    color: Colors.black,
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
                  onSaved: (value) => onSaved(value, "email"),
                  field: "email"),
              InputField(
                  label: ConstantsApp.LABEL_PASSWORD,
                  hint: ConstantsApp.HINT_PASSWORD,
                  icon: const Icon(Icons.password_outlined),
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                  onSaved: (value) => onSaved(value, "password"),
                  field: "password"),
              CallToActionButtonLarge(
                  label: ConstantsApp.CONNEXION_BTN, onPressed: onPressed),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      context.go(ConstantsApp.INSCRIPTION_ROUTE);
                    },
                    child: Text(
                      'Pas de compte? Inscrivez vous',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
