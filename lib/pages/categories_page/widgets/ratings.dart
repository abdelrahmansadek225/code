import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffCACACA).withOpacity(0.31),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.star, color: Color(0xffFFE500), size: 45),
          Icon(Icons.star, color: Color(0xffFFE500), size: 45),
          Icon(Icons.star, color: Color(0xffFFE500), size: 45),
          Icon(Icons.star, color: Color(0xffFFE500), size: 45),
          Icon(Icons.star, color: Color(0xff3B3636).withOpacity(0.75), size: 45)
        ],
      ),
    );
  }
}
