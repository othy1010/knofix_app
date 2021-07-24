import 'package:flutter/material.dart';
import 'package:knofix_app/src/screens/home/home_page.dart';
import 'package:knofix_app/src/screens/login_page/login_page.dart';
import 'package:knofix_app/src/screens/sign_in/sign_in.dart';
import 'package:knofix_app/src/screens/sign_up/sign_up.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed

    switch (settings.name) {
      // case '/':
      //   return PageRouteBuilder(
      //       pageBuilder: (context, animation, secondaryAnimation) {
      //     return Loginpage(transitionAnimation: animation);
      //   }
      //   transitionDuration: const Duration(seconds: 1));
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/sign_in':
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case '/sign_up':
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
