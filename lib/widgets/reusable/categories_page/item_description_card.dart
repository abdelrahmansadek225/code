import 'package:flutter/material.dart';

class ItemDescriptionCard extends StatelessWidget {
  final String title;
  final int number;

  const ItemDescriptionCard({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xffFFE500),
          ),
          child: Center(
            child: Text(
              number.toString(),
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(
          width: 270,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff3B3636).withOpacity(0.75),
            ),
          ),
        ),
      ],
    );
  }
}
