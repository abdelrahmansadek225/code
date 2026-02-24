import 'package:flutter/material.dart';

import 'package:flutter_grocery_app/widgets/reusable/product_details/price_card.dart';
import 'package:flutter_grocery_app/widgets/reusable/product_details/title_description_card.dart';
import 'package:flutter_grocery_app/widgets/shared/gradient_button.dart';
import 'package:flutter_grocery_app/widgets/shared/notification_card.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  final double sizedBoxValue = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Product Details",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xff3B3636),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NotificationCard(),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // ignore: deprecated_member_use
                      color: Color(0xffFFF500).withOpacity(0.29),
                    ),
                    child: Center(
                      child: Icon(Icons.shopping_cart,
                          // ignore: deprecated_member_use
                          size: 280,
                          color: Color(0xff333333).withOpacity(0.75)),
                    ),
                  ),
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                TitleDescriptionCard(
                  title: "Product Information",
                  description:
                      "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                TitleDescriptionCard(
                  title: "Product Information",
                  description:
                      "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Text(
                  "Price List",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff3B3636),
                  ),
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                PriceCard(
                  number: 1,
                  title: "Green peas",
                  weight: 100,
                  unit: "g",
                ),
                PriceCard(
                  number: 2,
                  title: "Brussels sprouts",
                  weight: 100,
                  unit: "g",
                ),
                PriceCard(
                  number: 3,
                  title: "Broccoli",
                  weight: 100,
                  unit: "g",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff3B3636),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "230\$",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff9E00FF),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientButton(
                      buttonHeight: 50,
                      buttonWidth: 300,
                      topColor: Color(0xffCC00FF),
                      bottomColor: Color(0xffFFE500),
                      buttonTitle: "Proceed To Pay",
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
