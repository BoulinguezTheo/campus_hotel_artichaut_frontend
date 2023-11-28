import 'package:campus_hotel_artichaut_frontend/utils/cta_button.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

import '../../utils/constants.dart';
import '../../utils/large_cta_button.dart';
import '../inscription_widgets/input_field.dart';

class Inscription extends StatefulWidget {
  // VoidCallback onPressed;

  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
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
                'Inscription',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'PlayfairDisplay',
                  color: Colors.black,
                ),
              ),
            ),
            const InputField(
                label: ConstantsApp.LABEL_PRENOM,
                hint: ConstantsApp.HINT_PRENOM,
                icon: Icon(Icons.person),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            const InputField(
                label: ConstantsApp.LABEL_NOM,
                hint: ConstantsApp.HINT_NOM,
                icon: Icon(Icons.person),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            const InputField(
                label: ConstantsApp.LABEL_ADDRESS,
                hint: ConstantsApp.HINT_ADDRESS,
                icon: Icon(Icons.add_location_rounded),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            const InputField(
                label: ConstantsApp.LABEL_EMAIL,
                hint: ConstantsApp.HINT_EMAIL,
                icon: Icon(Icons.email),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            const InputField(
                label: ConstantsApp.LABEL_PASSWORD,
                hint: ConstantsApp.HINT_PASSWORD,
                icon: Icon(Icons.password_outlined),
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false),
            CallToActionButtonLarge(
                label: ConstantsApp.INSCRIPTION_BTN, onPressed: onPressed),
          ], //children
        )
        )
    );
  }
}
