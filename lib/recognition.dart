import 'dart:math';

import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Recognition extends StatefulWidget {
  const Recognition({super.key});

  @override
  State<Recognition> createState() => _RecognitionState();
}

class _RecognitionState extends State<Recognition> {
  List Rowimages = [
    'assets/Group11.png',
    'assets/Group22.png',
    'assets/Group44.png',
    'assets/Group33.png',
    'assets/Group11.png',
    'assets/Group11.png',
    'assets/Group22.png',
    'assets/Group44.png',
    'assets/Group33.png',
    'assets/Group11.png',
  ];
  List rowText = [
    'Level 1',
    'Level 2',
    'Level 3',
    'Level 4',
    'Level 5',
    'Level 6',
    'Level 7',
    'Level 8',
    'Level 9',
    'Level 10'
  ];
  List avatarText = [
    'Spontaneous',
    'Random',
    'Bountiful',
    'Heart of Gold',
    'Spontaneous',
    'Random',
    'Bountiful',
    'Heart of Gold',
    'Spontaneous',
    'Random',
  ];

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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                  Container(
                    color: Kcolor,
                    height: 70,
                    width: double.infinity,
                    child: Column(
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
                                'Recognition',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      'Latest  Achievements',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        itemCount: Rowimages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 2),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Rowimages[index],
                                      height: 64,
                                    ),
                                    Text(rowText[index])
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      'Token Awarded',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  badges(Rowimages: Rowimages, avatarText: avatarText),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: Maincontainers,
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: 22, color: descriptionColor),
                                  )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(rowText[index])
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: Maincontainers,
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: 22, color: descriptionColor),
                                  )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(rowText[index]),
                              ],
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      ' Agape Badges',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  badges(Rowimages: Rowimages, avatarText: avatarText),
                  badges2(rowText: rowText),
                  SizedBox(
                    height: 20,
                  ),
                  badges2(rowText: rowText)
                ]))))));
  }
}

class badges2 extends StatelessWidget {
  const badges2({
    super.key,
    required this.rowText,
  });

  final List rowText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: rowText.length,
          itemBuilder: (context, index) {
            return Container(
              height: 60,
              width: 65,
              child: Column(
                children: [
                  Image.asset('assets/Group 111.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(rowText[index]),
                ],
              ),
            );
          }),
    );
  }
}

class badges extends StatelessWidget {
  const badges({
    super.key,
    required this.Rowimages,
    required this.avatarText,
  });

  final List Rowimages;
  final List avatarText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: Rowimages.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(Rowimages[index]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(avatarText[index]),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
