import 'package:figmadesign/drawerscreen.dart';
import 'package:flutter/material.dart';

class RowContainer extends StatelessWidget {
  const RowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 92,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        child: Center(
          child: SizedBox(
            height: 92,
            width: double.infinity,
            child: rowWidget(),
          ),
        ),
      ),
    );
  }
}
