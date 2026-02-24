import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xffD9D9D9).withOpacity(0.5),
          border:
              Border.all(color: Color(0xff000000).withOpacity(0.40), width: 1),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.search,
                color: Color(0xff000000).withOpacity(0.40),
                size: 30,
              ),
            ),
            Expanded(
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: "search here...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Color(0xff000000).withOpacity(0.40),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                  contentPadding: EdgeInsets.only(bottom: 4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
