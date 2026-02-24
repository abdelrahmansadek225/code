import 'package:flutter/material.dart';

class TitleDescriptionCard extends StatelessWidget {
  final String title;
  final String description;
  const TitleDescriptionCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Color(0xff3B3636)),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            // ignore: deprecated_member_use
            color: Color(0xff3B3636).withOpacity(0.75),
          ),
        ),
      ],
    );
  }
}
