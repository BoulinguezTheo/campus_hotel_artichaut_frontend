import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ElevatedButton(
        onPressed: () {
          context.go(ConstantsApp.ROOM_LIST_ROUTE);
        },
        child: Text("Rooms"),
      ),
    );
  }
}
