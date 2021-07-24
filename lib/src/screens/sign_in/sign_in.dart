import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:knofix_app/src/screens/sign_in/widget/email_input.dart';
import 'package:knofix_app/src/screens/sign_in/widget/password_input.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
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
        top: MediaQuery.of(context).size.height / 3,
        bottom: 0,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Kinofix",
                    style: TextStyle(
                        fontSize: 50, color: Theme.of(context).accentColor)),
                Text("Your good mood starts here...",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                Container(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Theme.of(context).accentColor,
                    //     // width: 5,
                    //     ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                      // TextField(),
                      Column(
                    children: <Widget>[
                      EmailInputBox(
                        labelText: "Email",
                        hintText: 'Enter your Email',
                        preChild: Icon(
                          FontAwesomeIcons.solidEnvelope,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      PasswordInputBox(
                        labelText: "Password",
                        hintText: 'Enter your password',
                        preChild: Icon(
                          Icons.vpn_key,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      Hero(
                        tag: "button_sign_in",
                        child: Container(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).accentColor,
                              elevation: 0,
                              side: BorderSide(
                                  width: 2, color: Colors.transparent),
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
                                '/home',
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
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
                    ],
                  ),
                  // Positioned.fill(
                  //   child: Align(
                  //     alignment: Alignment(0.0, 0.4),
                )
              ]),
        ),
      )
    ])));
  }
}
