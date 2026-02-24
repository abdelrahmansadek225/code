import 'package:flutter/material.dart';

class SaleAndLowContainer extends StatelessWidget {
  final String title;
  final double amount;
  final double price;
  final String unit;

  const SaleAndLowContainer({
    super.key,
    required this.title,
    required this.amount,
    required this.price, 
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 210,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff9E00FF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff06FFA5),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xffFFFFFF),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    amount.toString() + unit,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Text(
                    "$price\$",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFE500),
                    ),
                  ),
                ],
              ),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Color(0xffFFFFFF),
                    width: 3,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
