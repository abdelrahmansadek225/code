import 'package:flutter/material.dart';

import 'package:flutter_grocery_app/widgets/reusable/home_page/categories_container.dart';
import 'package:flutter_grocery_app/pages/home_page/widgets/search_bar.dart';
import 'package:flutter_grocery_app/widgets/app_bar/app_bar.dart';
import 'package:flutter_grocery_app/widgets/reusable/home_page/sale_and_low_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final double sizedBoxValue = 10;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: appBarLeading,
          title: appBarTitle,
          actions: appBarActions,
          shadowColor: Colors.black26,
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBox(),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Text(
                  "Explore Categories",
                  style: TextStyle(
                    fontSize: 20,
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
                    CategoriesContainer(
                      title: "Vegitables",
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      titleColor: Color(0xffFFFFFF),
                      descriptionColor: Color(0xffC3C3C3),
                      mainContainerColor: Color(0xff9E00FF),
                      smailContainerColor: Color(0xff06FFA5),
                    ),
                    CategoriesContainer(
                      title: "Fish & Meat",
                      description:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      titleColor: Color(0xffFFFFFF),
                      descriptionColor: Color(0xffc3c3c3),
                      mainContainerColor: Color(0xff9E00FF),
                      smailContainerColor: Color(0xff06FFA5),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriesContainer(
                      title: "Vegetables",
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      titleColor: Color(0xff3B3636),
                      descriptionColor: Color(0xff686060),
                      mainContainerColor: Color(0xffFFE500),
                      smailContainerColor: Color(0xffFF9900),
                    ),
                    CategoriesContainer(
                      title: "Fish & Meat",
                      description:
                          "Fish is the flesh of an animal used for food, and by that defination...",
                      titleColor: Color(0xff3B3636),
                      descriptionColor: Color(0xff686060),
                      mainContainerColor: Color(0xffFFE500),
                      smailContainerColor: Color(0xffFF9900),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Text(
                  "For Sale and Low Cost",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff3B3636),
                  ),
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SaleAndLowContainer(
                        title: "Washing Liquid",
                        amount: 220,
                        unit: "ml",
                        price: 230),
                    SaleAndLowContainer(
                        title: "Coffee and Tea",
                        amount: 100,
                        unit: "g",
                        price: 300),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
