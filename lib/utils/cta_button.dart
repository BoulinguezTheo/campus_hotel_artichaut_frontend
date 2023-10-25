import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallToActionButton extends StatelessWidget {
  final String label;
  const CallToActionButton({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      onPressed: () {},
    );
  }
}
