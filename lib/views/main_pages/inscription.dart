import 'package:campus_hotel_artichaut_frontend/utils/cta_button.dart';
import 'package:campus_hotel_artichaut_frontend/models/inscription_result.dart';
import 'package:campus_hotel_artichaut_frontend/services/http_service.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';
import 'package:go_router/go_router.dart';

import '../../utils/constants.dart';
import '../../utils/large_cta_button.dart';
import '../inscription_widgets/input_field.dart';

import '../../utils/constants.dart';
import '../../utils/large_cta_button.dart';
import '../inscription_widgets/input_field.dart';

class Inscription extends StatefulWidget {

  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();

  late String firstname;
  late String lastname;
  late String address;
  late String email;
  late String password;

  void inscriptionReturn(bool result){
    if ( result )
    {

      context.go(ConstantsApp.HOMEPAGE_ROUTE);
    }
  }
  void onPressed() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      HttpService httpService = HttpService();
      Future<bool> responseIsSuccess = httpService.inscription(firstname, lastname, address, email, password);
      if (await responseIsSuccess) {
        context.go(ConstantsApp.HOMEPAGE_ROUTE);
      }
    }
  }
  void onSaved(value, field){
    setState(() {
      if(field == "firstname"){
        firstname = value;
      }else if(field == "lastname"){
        lastname = value;
      }else if(field == "address"){
        address = value;
      }else if(field == "email"){
        email = value;
      }else{
        password = value;
      }
    });
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
            InputField(
                label: ConstantsApp.LABEL_PRENOM,
                hint: ConstantsApp.HINT_PRENOM,
                icon: const Icon(Icons.person),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true,
                onSaved: (value) => onSaved(value,"firstname"),
                field: "firstname"
            ),
            InputField(
                label: ConstantsApp.LABEL_NOM,
                hint: ConstantsApp.HINT_NOM,
                icon: const Icon(Icons.person),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true,
                onSaved: (value) => onSaved(value,"lastname"),
                field: "lastname"
            ),
            InputField(
                label: ConstantsApp.LABEL_ADDRESS,
                hint: ConstantsApp.HINT_ADDRESS,
                icon: const Icon(Icons.add_location_rounded),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true,
                onSaved: (value) => onSaved(value,"address"),
                field: "address"),
            InputField(
                label: ConstantsApp.LABEL_EMAIL,
                hint: ConstantsApp.HINT_EMAIL,
                icon: const Icon(Icons.email),
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true,
                onSaved: (value) => onSaved(value,"email"),
                field: "email"),
            InputField(
                label: ConstantsApp.LABEL_PASSWORD,
                hint: ConstantsApp.HINT_PASSWORD,
                icon: const Icon(Icons.password_outlined),
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                onSaved: (value) => onSaved(value,"password"),
                field: "password"),
            CallToActionButtonLarge(
                label: ConstantsApp.INSCRIPTION_BTN,
                onPressed: onPressed),
          ], //children
        )
        )
    );
  }
}
