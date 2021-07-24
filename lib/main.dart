import 'package:flutter/material.dart';
import 'package:knofix_app/src/config/routes/routes.dart';
import 'package:knofix_app/src/screens/home/home_page.dart';
import 'package:knofix_app/src/screens/login_page/login_page.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinofix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff151515),
        accentColor: Color(0xffff6f00),
        // errorColor: Color(0xff323232),151515,1c1c1e,323232,a0a0a0,ffffff
// Color(0xff1c1c1e)
// Color(0xff323232)
// Color(0xffa0a0a0)
//
        // bottomAppBarColor: Color(0xff000000),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: Loginpage(),
    );
  }
}
