import 'package:flutter/material.dart';

class CategoriesContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color titleColor;
  final Color descriptionColor;
  final Color mainContainerColor;
  final Color smailContainerColor;

  const CategoriesContainer({
    super.key,
    required this.title,
    required this.description,
    required this.titleColor,
    required this.descriptionColor,
    required this.mainContainerColor,
    required this.smailContainerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 210,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: mainContainerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: titleColor,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: descriptionColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: smailContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}
