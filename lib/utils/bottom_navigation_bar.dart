import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'constants.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 1;

  void _onTap() {
    switch (_selectedIndex) {
      case 0:
        context.go(ConstantsApp.ROOM_LIST_ROUTE);
        break;
      case 1:
        context.go(ConstantsApp.HOMEPAGE_ROUTE);
        break;
      case 2:
        context.go(ConstantsApp.ACCOUNT_ROUTE);
        break;
      default:
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return GNav(
        backgroundColor: Color.fromRGBO(45, 73, 76, 1),
        color:  Color.fromRGBO(255, 255, 255, 1),
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
      selectedIndex: _selectedIndex,
      onTabChange: (index) {
        setState(() {
          _selectedIndex = index;
        });
        _onTap();
      },
    );

  }
}


