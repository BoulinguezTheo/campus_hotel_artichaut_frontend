import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallToActionButton extends StatelessWidget {
  final String label;
  const CallToActionButton({ required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
        // color: ,
        child: Text(label),
        onPressed: () {},
    );
  }
}
