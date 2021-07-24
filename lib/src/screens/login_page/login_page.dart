import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
      body: Stack(children: <Widget>[
        Hero(
          tag: "image_login",
          child: Image(
            image: AssetImage("assets/image/home_background.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2,
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Kinofix",
                    style: TextStyle(
                        fontSize: 50, color: Theme.of(context).accentColor)),
                Text("Your good mood starts here...",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                Container(
                  height: 20,
                ),
                Hero(
                  tag: "button_sign_in",
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).accentColor, // background
                        onPrimary: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/sign_in',
                        );
                      },
                    ),
                  ),
                ),
                Hero(
                  tag: "button_sign_up",
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // background
                        onPrimary: Colors.white,
                        elevation: 0,
                        side: BorderSide(
                            width: 2, color: Theme.of(context).accentColor),
                        shape: RoundedRectangleBorder(

                            //to set border radius to button
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/sign_up',
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        splashColor: Colors.cyan,
                        splashRadius: 100,
                        highlightColor: Colors.cyan,
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () {
                          print("google icon");
                        },
                      ),
                      Container(
                        width: 10,
                      ),
                      IconButton(
                        highlightColor: Colors.white,
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () {
                          print("facebook icon");
                        },
                      ),
                      Container(
                        width: 10,
                      ),
                      IconButton(
                        highlightColor: Colors.white,
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () {
                          print("twitter icon");
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, // background
                      onPrimary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
