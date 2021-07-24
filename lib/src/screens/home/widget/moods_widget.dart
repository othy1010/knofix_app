import 'package:flutter/material.dart';
import 'package:knofix_app/src/constant/constant.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Mood 1",
    "Mood 1",
    "Mood 1",
    "Mood 1",
    "Mood 1",
    "Mood 1",
    "Mood 1",
    "Mood 1",
  ];

  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: SizedBox(
        height: 25,
        //
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
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
        padding: const EdgeInsets.only(right: kDefaultPaddin * 2, left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontFamily: 'UI_display',
                color: selectedIndex == index
                    ? Theme.of(context).accentColor
                    : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index
                  ? Theme.of(context).accentColor
                  : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
