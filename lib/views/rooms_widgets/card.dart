import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/utils/cta_button.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: Theme.of(context).cardTheme.elevation,
        color: Theme.of(context).cardTheme.color,
        margin: const EdgeInsets.fromLTRB(9, 12, 9, 0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
              child: Image.asset(ConstantsApp.ROOMS_SUITE_DELUXE_PATH),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      ConstantsApp.ROOMS_SUITE_DELUXE_TITLE,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ConstantsApp.ROOMS_SUITE_DELUXE_TEXT,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 1.8, bottom: 0.0),
                          child: const CallToActionButton(
                              label: ConstantsApp.ROOMS_RESERVE),
                        ),
                        SizedBox(width: 5.vw),
                        Text(
                          ConstantsApp.ROOMS_SUITE_DELUXE_PRICE,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
