import 'package:flutter/material.dart';

class upload extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color kcolor;
  final image;

  upload({
    required this.image,
    required this.kcolor,
    required this.text,
    required this.textcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Image.asset(
            image,
            height: 10,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(color: textcolor, fontSize: 12),
          ),
        ],
      ),
      height: 25,
      width: 84,
      decoration:
          BoxDecoration(color: kcolor, borderRadius: BorderRadius.circular(20)),
    );
  }
}
