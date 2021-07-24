import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:knofix_app/src/constant/constant.dart';
import 'package:knofix_app/src/screens/home/widget/collections_widget.dart';
import 'package:knofix_app/src/screens/home/widget/genres_widget.dart';
import 'package:knofix_app/src/screens/home/widget/moods_widget.dart';
import 'package:knofix_app/src/screens/home/widget/movie_widget.dart';
import 'package:knofix_app/src/screens/home/widget/nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Spacer(),
                    Text(
                      "Choose \nyour mood",
                      style: TextStyle(
                        fontFamily: headingFont,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    // Spacer(
                    //   flex: 2,
                    // ),
                    Categories(),
                    // Spacer(flex: 2),
                    MovieCards(),
                    // Spacer(),
                    Genres(),
                    // Spacer(),
                    Collections(),
                    // Spacer(
                    //   flex: 1,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
