import 'package:campus_hotel_artichaut_frontend/theme/theme.dart';
import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/views/main_pages/account.dart';
import 'package:campus_hotel_artichaut_frontend/views/main_pages/homepage.dart';
import 'package:campus_hotel_artichaut_frontend/views/init_app.dart';
import 'package:campus_hotel_artichaut_frontend/views/main_pages/rooms.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scaled_size/scaled_size.dart';

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
    return ScaledSize(builder: () {
      return MaterialApp.router(
        title: 'Flutter Demo',
        theme: myTheme,
        routerConfig: _router,
      );
    });
  }
}
