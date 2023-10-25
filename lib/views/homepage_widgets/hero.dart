import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

class MyHero extends StatelessWidget {
  const MyHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.vh,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/photo_lobby.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
