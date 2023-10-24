import 'package:campus_hotel_artichaut_frontend/utils/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/constants.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ElevatedButton(
        child: Text('Homepage'),
        onPressed: () {
          context.go(ConstantsApp.ROOM_LIST_ROUTE);
        },
      ),
    );
  }
}
