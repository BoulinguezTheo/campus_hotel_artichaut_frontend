import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

import '../../../utils/constants.dart';
import '../../../utils/cta_button.dart';

class HeroCallToActionButtons extends StatelessWidget {
  const HeroCallToActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CallToActionButton(label: ConstantsApp.REVIEW_LABEL, onPressed: () => {},),
        SizedBox(width: 6.vw),
        CallToActionButton(label: ConstantsApp.RESERVATION_LABEL, onPressed: () => {}),
      ],
    );
  }
}
