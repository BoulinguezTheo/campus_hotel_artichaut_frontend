import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/utils/cta_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaled_size/scaled_size.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ConstantsApp.LOGO_ARTICHAUT_PATH,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.background,
                      BlendMode.srcIn),
                  height: 4.vh,
                ),
                SizedBox(width: 3.vw),
                SvgPicture.asset(
                  ConstantsApp.LOGO_ARTICHAUT_PATH,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.background,
                      BlendMode.srcIn),
                  height: 4.vh,
                ),
                SizedBox(width: 3.vw),
                SvgPicture.asset(
                  ConstantsApp.LOGO_ARTICHAUT_PATH,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.background,
                      BlendMode.srcIn),
                  height: 4.vh,
                )
              ],
            ),
            SizedBox(height: 2.vh),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CallToActionButton(label: ConstantsApp.REVIEW_LABEL),
                SizedBox(width: 3.vw),
                const CallToActionButton(label: ConstantsApp.RESERVATION_LABEL),
              ],
            )
          ],
        ),
      ),
    );
  }
}
