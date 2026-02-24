import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/pages/categories_page/widgets/ratings.dart';
import 'package:flutter_grocery_app/widgets/reusable/categories_page/item_description_card.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 440,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // ignore: deprecated_member_use
        color: Color(0xffE0DCD6).withOpacity(0.29),
        border: Border.all(
          // ignore: deprecated_member_use
          color: Color(0xffE0DCD6).withOpacity(0.80),
          width: 6,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Vegetables",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff3B3636)),
          ),
          SizedBox(
            height: 5,
          ),
          ItemDescriptionCard(
            title:
                "Vegetables are parts of plants that are consumed by humans...",
            number: 1,
          ),
          ItemDescriptionCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              number: 2),
          ItemDescriptionCard(
            title:
                "Vegetables are parts of plants that are consumed by humans...",
            number: 3,
          ),
          ItemDescriptionCard(
            title:
                "Vegetables are parts of plants that are consumed by humans...",
            number: 4,
          ),
          ItemDescriptionCard(
            title:
                "Vegetables are parts of plants that are consumed by humans...",
            number: 5,
          ),
          SizedBox(
            height: 5,
          ),
          Ratings(),
        ],
      ),
    );
  }
}
