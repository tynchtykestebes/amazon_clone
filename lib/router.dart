import 'package:amazon_clone/common/widgets/bottom_bar.dart';
import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

// generateRoute is a function that returns Route
// RouteSettings will give us any data that is useful in constructing a route
Route<dynamic> generateRoute(RouteSettings routeSettings) {
  // we have switch and a key statement ({}), because we are going to have so many routes (cases)
  // in the app
  // routeSettings.name will be the name of the route that we specify
  switch (routeSettings.name) {
    // AuthScreen is the first case. It demands String, that's why in the auth_screen.dart file
    // routeName = '/auth-screen'. Now we don't have to write '/auth-screen'  everywhere in the app
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    // default will run whenever any of the routes that we have doesn't match any of the cases thet we have
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Wrong page'),
          ),
        ),
      );
  }
}
