import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/coustom.dart';
import 'package:figmadesign/kbutton.dart';
import 'package:figmadesign/rectangle.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:dotted_border/dotted_border.dart';

class Nominate extends StatefulWidget {
  const Nominate({super.key});

  @override
  State<Nominate> createState() => _NominateState();
}

class _NominateState extends State<Nominate> {
  bool isOpened = false;
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
  toggleMenu([bool end = false]) {
    if (end) {
      // ignore: no_leading_underscores_for_local_identifiers
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: SideMenu(
            background: const Color(0xff31333E),
            key: _sideMenuKey,
            menu: Container(child: buildMenu(context)),
            type: SideMenuType.shrinkNSlide,
            onChange: (_isOpened) {
              setState(() => isOpened = _isOpened);
            },
            child: SafeArea(
                child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Kcolor,
                      height: 70,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 10, right: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    toggleMenu();
                                  }, // Call the function passed here
                                  child: Image.asset('assets/Group 17.png'),
                                ),
                                const Text(
                                  'Nominate a Giver',
                                  style: TextStyle(
                                      fontSize: 20, color: Maincontainers),
                                ),
                                const Icon(
                                  Icons.more_vert_rounded,
                                  color: Maincontainers,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Krectangle(
                      text1: 'Individual',
                      text2: 'Organization',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Maincontainers,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 25),
                        child: Column(
                          children: [
                            coustomField(
                                text: 'Full Name', icon: Icons.person_outline),
                            SizedBox(
                              height: 20,
                            ),
                            coustomField(
                                text: 'Email Id', icon: Icons.email_outlined),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 133,
                              width: 343,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Text(
                                      'Describe the act of kindness and it’s impact...',
                                      style: TextStyle(fontSize: 12.61),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 100),
                                        Text(
                                          'Up to 500 characters',
                                          style: TextStyle(
                                              fontSize: 12.89,
                                              color: descriptionColor),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            DottedBorder(
                              strokeWidth: 2,
                              strokeCap: StrokeCap.butt,
                              borderType: BorderType.RRect,
                              color: Kcolor,
                              radius: Radius.circular(12),
                              child: Container(
                                height: 133,
                                width: 343,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffC6000),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 57,
                                      width: 57,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/image16.png',
                                              height: 20,
                                              width: 40,
                                            ),
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Upload pictures and videos',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Up to 52 MB',
                                      style: TextStyle(color: descriptionColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Kbutton(text: 'Submit Nomination', ontap: () {})
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))));
  }
}
