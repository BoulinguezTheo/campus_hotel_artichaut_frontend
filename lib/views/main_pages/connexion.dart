import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/large_cta_button.dart';
import '../inscription_widgets/input_field.dart';
import 'package:scaled_size/scaled_size.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
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
        InputField(label: ConstantsApp.LABEL_EMAIL, hint: ConstantsApp.HINT_EMAIL,icon: Icon(Icons.email), obscureText: false, autocorrect: true, enableSuggestions: true),
        InputField(label: ConstantsApp.LABEL_PASSWORD, hint: ConstantsApp.HINT_PASSWORD, icon: Icon(Icons.password_outlined),obscureText: true, autocorrect: false, enableSuggestions: false),
        CallToActionButtonLarge(label: ConstantsApp.CONNEXION_BTN),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  height: 2,
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text(
                'Ou',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'PlayfairDisplay',
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 2,
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        )
      ], //children
    );
  }
}
