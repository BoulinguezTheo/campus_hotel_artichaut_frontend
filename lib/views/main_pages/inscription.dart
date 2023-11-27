import 'package:campus_hotel_artichaut_frontend/utils/cta_button.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/large_cta_button.dart';
import '../inscription_widgets/input_field.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'PlayfairDisplay',
                    color: Colors.black,
                  ),
                ),
              ),
              InputField(label: ConstantsApp.LABEL_PRENOM, hint: ConstantsApp.HINT_PRENOM,icon: Icon(Icons.person), obscureText: false, autocorrect: true, enableSuggestions: true),
              InputField(label: ConstantsApp.LABEL_NOM, hint: ConstantsApp.HINT_NOM, icon: Icon(Icons.person),obscureText: false, autocorrect: true, enableSuggestions: true),
              InputField(label: ConstantsApp.LABEL_ADDRESS, hint: ConstantsApp.HINT_ADDRESS, icon: Icon(Icons.add_location_rounded),obscureText: false, autocorrect: true, enableSuggestions: true),
              InputField(label: ConstantsApp.LABEL_EMAIL, hint: ConstantsApp.HINT_EMAIL,icon: Icon(Icons.email), obscureText: false, autocorrect: true, enableSuggestions: true),
              InputField(label: ConstantsApp.LABEL_PASSWORD, hint: ConstantsApp.HINT_PASSWORD, icon: Icon(Icons.password_outlined),obscureText: true, autocorrect: false, enableSuggestions: false),
              CallToActionButtonLarge(label: ConstantsApp.INSCRIPTION_BTN),
            ], //children
          )
      );
  }
}
