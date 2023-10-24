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
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GNav(
            backgroundColor: Theme.of(context).primaryColor,
            color:  Theme.of(context).colorScheme.background,
            activeColor: Theme.of(context).colorScheme.background,
            tabBackgroundColor: Theme.of(context).colorScheme.surface,
            padding: const EdgeInsets.all(15),
            gap: 8,
            tabs: const [
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
        ),
      ),
    );

  }
}


