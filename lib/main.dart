import 'package:campus_hotel_artichaut_frontend/utils/bottom_navigation_bar.dart';
import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/views/account.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage.dart';
import 'package:campus_hotel_artichaut_frontend/views/init_app.dart';
import 'package:campus_hotel_artichaut_frontend/views/rooms.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'shell');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: ConstantsApp.HOMEPAGE_ROUTE,
    routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return InitApp(child: child);
      },
      routes: [
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
    )
  ]);

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
