import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/utils/cta_button.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/hero_widgets/establishment_standing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaled_size/scaled_size.dart';

import 'hero_widgets/hero_call_to_action_buttons.dart';

class MyHero extends StatelessWidget {
  const MyHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73.vh,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/photo_lobby.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 53.vh,
            ),
            Text(
              ConstantsApp.ESTABLISMENT_NAME_LABEL,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 0.5.vh),
            const EstablishmentStanding(),
            SizedBox(height: 2.vh),
            const HeroCallToActionButtons()
          ],
        ),
      ),
    );
  }
}
