import 'package:figmadesign/constant.dart';
import 'package:figmadesign/coustom.dart';
import 'package:figmadesign/kbutton.dart';
import 'package:figmadesign/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.8,
              child: Container(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Group 3.png',
                        height: 125,
                      ),
                      Image.asset(
                        'assets/Group 2.png',
                        height: 34,
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Maincontainers,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: Kcontainer,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      coustomField(
                          text: 'Email Id', icon: Icons.email_outlined),
                      SizedBox(
                        height: 30,
                      ),
                      coustomField(
                          text: 'Full Name', icon: Icons.person_outline),
                      SizedBox(
                        height: 30,
                      ),
                      coustomField(text: 'Password', icon: Icons.lock_outline),
                      SizedBox(
                        height: 30,
                      ),
                      coustomField(
                          text: 'Confirm Password', icon: Icons.lock_outline),
                      SizedBox(
                        height: 30,
                      ),
                      Kbutton(text: 'Sign up', ontap: () {}),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Already have an account',
                              style: TextStyle(color: Colors.grey),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Login();
                                }));
                              },
                              child: Text('Login',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Kcolor,
                                      decorationThickness: 2,
                                      color: Kcolor)),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
