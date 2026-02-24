import 'package:flutter/material.dart';

import 'package:flutter_grocery_app/pages/categories_page/widgets/selected_item.dart';
import 'package:flutter_grocery_app/widgets/reusable/categories_page/all_categories.dart';
import 'package:flutter_grocery_app/widgets/shared/notification_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  final double sizedBoxValue = 15;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Categories",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NotificationCard(),
                  SizedBox(
                    height: sizedBoxValue,
                  ),
                  Text(
                    "All Categories",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3B3636),
                    ),
                  ),
                  SizedBox(
                    height: sizedBoxValue,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AllCategories(
                          title: "vegetables & \nFruits",
                          viewMore: "20+ more ...",
                          mainBox: Color(0xff0057FF),
                          circleBox: Color(0xff0E00AC),
                          mainBoxBorder: Color(0xff0094FF),
                        ),
                        AllCategories(
                          title: "Bites & \nDrinks",
                          viewMore: "53+ more ...",
                          mainBox: Color(0xff70FF00),
                          circleBox: Color(0xff06FFA5),
                          mainBoxBorder: Color(0xff00FF29),
                        ),
                      ]),
                  SizedBox(
                    height: sizedBoxValue,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AllCategories(
                        title: "Cooking & \nElements",
                        viewMore: "10+ more ...",
                        mainBox: Color(0xff00E0FF),
                        circleBox: Color(0xff10C0F8),
                        mainBoxBorder: Color(0xff00F0FF),
                      ),
                      AllCategories(
                        title: "Chicken & \nBeef",
                        viewMore: "2+ more ...",
                        mainBox: Color(0xffFFF500),
                        circleBox: Color(0xffFF9900),
                        mainBoxBorder: Color(0xffFFB800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizedBoxValue,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AllCategories(
                        title: "Vegetables & \nFruits",
                        viewMore: "20+ more ...",
                        mainBox: Color(0xffFF3D00),
                        circleBox: Color(0xffE56C6C),
                        mainBoxBorder: Color(0xffFFA800),
                      ),
                      AllCategories(
                        title: "Transport & \nVehicles",
                        viewMore: "20+ more ...",
                        mainBox: Color(0xffCC00FF),
                        circleBox: Color(0xffDB00FF),
                        mainBoxBorder: Color(0xffCC00FF),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizedBoxValue,
                  ),
                  Text(
                    "Selected Items",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3B3636),
                    ),
                  ),
                  SizedBox(
                    height: sizedBoxValue,
                  ),
                  SelectedItem(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
