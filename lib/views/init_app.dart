import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/bottom_navigation_bar.dart';

class InitApp extends StatelessWidget {
  final Widget child;
  const InitApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/logo_simple.svg'),
      ),
      body: child,
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
