import 'package:flutter/material.dart';

class AllCategories extends StatelessWidget {
  final String title;
  final String viewMore;
  final Color mainBox;
  final Color circleBox;
  final Color mainBoxBorder;

  const AllCategories(
      {super.key,
      required this.title,
      required this.viewMore,
      required this.mainBox,
      required this.circleBox,
      required this.mainBoxBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 80,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // ignore: deprecated_member_use
        color: mainBox.withOpacity(0.29),
        border: Border.all(
          color: mainBoxBorder,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  // ignore: deprecated_member_use
                  color: Color(0xff3B3636).withOpacity(0.91),
                ),
              ),
              Text(
                viewMore,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  // ignore: deprecated_member_use
                  color: Color(0xff3B3636).withOpacity(0.47),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: circleBox,
            ),
          ),
        ],
      ),
    );
  }
}
