// ignore_for_file: prefer_const_constructors

import 'package:figmadesign/constant.dart';
import 'package:figmadesign/coustom.dart';
import 'package:figmadesign/kbutton.dart';
import 'package:figmadesign/pages.dart';
import 'package:figmadesign/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Group 3.png',
                      height: 100,
                      width: 100,
                    ),
                    Image.asset(
                      'assets/Group 2.png',
                      height: 44,
                      width: 100,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Maincontainers,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 10),
                      child: Text(
                        'Login',
                        style: Kcontainer,
                      ),
                    ),
                    coustomField(
                      text: 'Email id',
                      icon: Icons.email_outlined,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    coustomField(text: 'Password', icon: Icons.lock_outlined),
                    Text(
                      'Forgot Password?',
                      style:
                          TextStyle(color: Kcolor, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Kbutton(
                          text: 'Login',
                          ontap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return mypage();
                            }));
                          }),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Dont have an account?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Signup();
                              }));
                            },
                            child: Text('Signup',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Kcolor,
                                    decorationThickness: 2,
                                    color: Kcolor)),
                          ),
                        ]),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
