import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaled_size/scaled_size.dart';

import '../../../utils/constants.dart';

class EstablishmentStanding extends StatelessWidget {
  const EstablishmentStanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
