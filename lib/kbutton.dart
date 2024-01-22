import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';

class Kbutton extends StatelessWidget {
  final String text;
  final void Function()? ontap;

  const Kbutton({required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: Kbuttons,
        )),
        height: 50,
        width: 343,
        decoration: BoxDecoration(
            color: Kcolor, borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
