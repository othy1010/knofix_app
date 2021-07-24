import 'package:flutter/material.dart';
import 'package:knofix_app/src/constant/constant.dart';

// We need satefull widget for our categories

class MovieCards extends StatefulWidget {
  @override
  _MovieCardsState createState() => _MovieCardsState();
}

class _MovieCardsState extends State<MovieCards> {
  List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dressddes",
    "Hand dddbag",
    "Jewellddery",
    "Footweddar",
    "Dressedds",
  ];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.4,
            child: Placeholder(
              color: Colors.red,
            ),
          )),
    );
  }
}
