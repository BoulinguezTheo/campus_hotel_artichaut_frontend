import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/bottom_navigation_bar.dart';
import '../utils/constants.dart';

class InitApp extends StatelessWidget {
  final Widget child;
  const InitApp({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(45, 73, 76, 1),
        title: SvgPicture.asset('assets/logo_simple.svg'),
      ),
      body: Container(
        color: Colors.grey,
        child: child,
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(45, 73, 76, 1),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: GNav(
            backgroundColor: Color.fromRGBO(45, 73, 76, 1),
            color: Color.fromRGBO(255, 255, 255, 1),
            activeColor: Color.fromRGBO(255, 255, 255, 1),
            tabBackgroundColor: Color.fromRGBO(138, 168, 154, 1),
            padding: EdgeInsets.all(15),
            gap: 8,
            // onTabChange: ,
            tabs: [
              GButton(icon: Icons.search, text: ConstantsApp.SEARCH_LABEL),
              GButton(icon: Icons.home, text: ConstantsApp.HOMEPAGE_LABEL),
              GButton(icon: Icons.settings, text: ConstantsApp.ACCOUNT_LABEL),
            ],
          ),
        ),
      ),
    );
  }
}
