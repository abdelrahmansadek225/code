import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final int number;
  final String title;
  final int weight;
  final String unit;

  const PriceCard(
      {super.key,
      required this.number,
      required this.title,
      required this.weight,
      required this.unit,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3B3636),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // ignore: deprecated_member_use
                color: Color(0xffD9D9D9).withOpacity(0.60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    weight.toString() + unit,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color(0xff3B3636),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 18,
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color(0xff3B3636),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Icon(Icons.remove, size: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
