import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffF2E4CE),
        border: Border.all(
          color: Color(0xffFF9900),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get 100% off on Groceries Plus T&C Apply",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Color(0xffFF9900),
            ),
          ),
          Text(
            "Sped payments with master and visa",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              // ignore: deprecated_member_use
              color: Color(0xff3B3636).withOpacity(0.45),
            ),
          ),
        ],
      ),
    );
  }
}
