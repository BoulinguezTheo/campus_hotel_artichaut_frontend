import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/views/account.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage.dart';
import 'package:campus_hotel_artichaut_frontend/views/rooms.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    routes: <RouteBase> [
      GoRoute(
        path: ConstantsApp.HOMEPAGE_ROUTE,
        builder: (context, state) => const MyHomepage(),
      ),
      GoRoute(
        path: ConstantsApp.ACCOUNT_ROUTE,
        builder: (context, state) => const MyAccount(),
      ),
      GoRoute(
        path: ConstantsApp.ROOM_LIST_ROUTE,
        builder: (context, state) => const MyRooms(),
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}