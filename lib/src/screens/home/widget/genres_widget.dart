import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:knofix_app/src/constant/constant.dart';

// We need satefull widget for our categories

class Genres extends StatefulWidget {
  @override
  _GenresState createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  List<String> categories = [
    "Genre 1",
    "Genre 2",
    "Genre 3",
    "Genre 4",
    "Genre 5",
    "Genre 6",
    "Genre 7",
    "Genre 8",
    "Genre 9",
    "Genre 10",
  ];
  // By default our first item will be selected
  List<int> selectedIndexs = [];
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
                'Genres',
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
                  print("plus genres");
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
          //
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return buildCategory(index);
            },
          ),
        ),
      ],
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedIndexs.contains(index)) {
            selectedIndexs.remove(index);
          } else {
            selectedIndexs.add(index);
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPaddin / 2, vertical: kDefaultPaddin / 3),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                offset: const Offset(
                  1.0,
                  1.0,
                ), //Offset
                blurRadius: 5.0,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Colors.black12,
                offset: const Offset(
                  -1.0,
                  -1.0,
                ), //Offset
                blurRadius: 5.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
            border: Border.all(
              color: (selectedIndexs.contains(index))
                  ? Theme.of(context).accentColor
                  : Colors.transparent,
              width: 0.5,
            ), //Border,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                categories[index],
                style: TextStyle(
                  fontFamily: 'UI_display',
                  color: (selectedIndexs.contains(index))
                      ? Theme.of(context).accentColor
                      : kTextLightColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
