// ignore_for_file: prefer_const_constructors

import 'package:figmadesign/constant.dart';
import 'package:figmadesign/kbutton.dart';
import 'package:figmadesign/login.dart';
import 'package:figmadesign/signup.dart';
import 'package:figmadesign/socialButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Group 4.png',
                      height: MediaQuery.of(context).size.height / 6,
                    ),
                  ]),
              height: MediaQuery.of(context).size.height / 3.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Kcolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7.5,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Congratulate those who do good positive deeds',
                style: kstyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Applaud, Explore & Share with your friends',
              style: kSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                SocialMediaButton(
                  icon: FontAwesomeIcons.facebookF,
                  color: Color(0xff3B5B95),
                ),
                SocialMediaButton(
                  icon: FontAwesomeIcons.twitter,
                  color: Color(0xff03A9F4),
                ),
                SocialMediaButton(
                  icon: FontAwesomeIcons.googlePlusG,
                  color: Color(0xffDB4D44),
                )
              ],
            ),
            Kbutton(
              text: 'Log In',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
            ),
            SizedBox(
              height: 20,
            ),
            Kbutton(
                text: 'Create Acoount',
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
