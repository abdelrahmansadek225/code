import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color(0xff9E00FF),
    ),
    child: Center(
      child: Icon(
        Icons.add_location_alt,
        color: Color(0xffFFFFFF),
      ),
    ),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
        fontSize: 16,
        color: const Color(0xff3B3636).withOpacity(0.47),
      ),
    ),
    Text(
      "92 High Street, London",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xff3B3636),
      ),
    ),
  ],
);

List<Widget> appBarActions = [
  Padding(
    padding: EdgeInsets.only(right: 10),
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color(0xffFF9900).withOpacity(0.52),
      ),
      child: Center(
        child: Icon(
          Icons.shopping_bag,
          color: Color(0xffFFFFFF),
        ),
      ),
    ),
  ),
];
