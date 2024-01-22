import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final void Function()? onPress;
  final String text;

  HomeContainer({
    required this.onPress,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Kcolor,
      height: 130,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onPress, // Call the function passed here
                  child: Image.asset('assets/Group 17.png'),
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 20, color: Maincontainers),
                ),
                Icon(
                  Icons.more_vert_rounded,
                  color: Maincontainers,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              style: TextStyle(
                fontSize: 8,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Maincontainers),
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                labelText: 'Search here...',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderSide: BorderSide()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
