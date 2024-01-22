import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';

class Krectangle extends StatelessWidget {
  final text1;
  final text2;
  const Krectangle({
    this.text1,
    this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 171,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: Center(
                child: Text(
              text1,
              style: TextStyle(fontSize: 16, color: Maincontainers),
            )),
          ),
          Container(
            height: 40,
            width: 171,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: Center(
                child: Text(
              text2,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )),
          ),
        ],
      ),
    );
  }
}
