import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:knofix_app/src/constant/constant.dart';

// We need satefull widget for our categories

class Collections extends StatefulWidget {
  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Collections',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                highlightColor: Colors.white,
                icon: Icon(
                  FontAwesomeIcons.angleRight,
                  color: Colors.white,
                  size: 20.0,
                ),
                onPressed: () {
                  print("plus collections");
                },
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            //
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return buildCategory(index);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Placeholder(
              color: Colors.red,
            ),
          )),
    );
  }
}
