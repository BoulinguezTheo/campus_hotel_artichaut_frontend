import 'package:artichaut_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, ConstantsApp.ACCOUNT_ROUTE);
        },
        child: const Text('Account page'),
      ),
    );
  }
}
