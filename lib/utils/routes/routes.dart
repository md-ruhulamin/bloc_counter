import 'package:bloc_counter/user_list/user_home.dart';
import 'package:bloc_counter/counter/counter_homepage.dart';
import 'package:bloc_counter/home_page.dart';
import 'package:bloc_counter/login/login_screen.dart';
import 'package:bloc_counter/login/profile_page.dart';
import 'package:bloc_counter/main.dart';
import 'package:bloc_counter/post/post_homepage.dart';
import 'package:bloc_counter/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case RoutesName.profile_page:
        return MaterialPageRoute(
            builder: (BuildContext context) => ProfilePage(
                  data: '',
                ));
      case RoutesName.counter_page:
        return MaterialPageRoute(
            builder: (BuildContext context) => CounterHomepage());

      case RoutesName.post_home:
        return MaterialPageRoute(
            builder: (BuildContext context) => PostHomepage());

      case RoutesName.user_list_home:
        return MaterialPageRoute(builder: (BuildContext context) => UserHome());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
