import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/constants.dart';

class MyRooms extends StatelessWidget {
  const MyRooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ElevatedButton(
        onPressed: () {
          context.go(ConstantsApp.HOMEPAGE_ROUTE);
        },
        child: Text("Home"),
      ),
    );;
  }
}
