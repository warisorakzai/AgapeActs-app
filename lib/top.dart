import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/homecontainer.dart';
import 'package:figmadesign/rectangle.dart';
import 'package:figmadesign/topgivers.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Topbadges extends StatefulWidget {
  const Topbadges({super.key});

  @override
  State<Topbadges> createState() => _TopbadgesState();
}

class _TopbadgesState extends State<Topbadges> {
  List ListImages = [
    'assets/Ellipse 784.png',
    'assets/Ellipse 785.png',
    'assets/Ellipse 786.png',
    'assets/Ellipse 787.png',
    'assets/Ellipse 788.png',
    'assets/Ellipse 789.png',
    'assets/Ellipse 790.png',
    'assets/Ellipse 7841.png',
    'assets/Ellipse 7851.png',
    'assets/Ellipse 7862.png',
  ];
  List names = [
    'Lavem Bruen',
    'Frank Conn',
    'Garry Weimann',
    'Juliana Hemarm',
    'Kianna Barrows',
    'Madsen Rippin',
    'Katlin Carter',
    'Sam Curran',
    'Natasha Watson',
    'Salman',
  ];
  int currentTab = 0;
  TabValue(int index) {
    currentTab = index;
    setState(() {});
  }

  bool isOpened = false;
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
  toggleMenu([bool end = false]) {
    if (end) {
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
            background: Color(0xff31333E),
            key: _sideMenuKey,
            menu: Container(child: buildMenu(context)),
            type: SideMenuType.shrinkNSlide,
            onChange: (_isOpened) {
              setState(() => isOpened = _isOpened);
            },
            child: SizedBox(
                child: SafeArea(
                    child: Scaffold(
              backgroundColor: Maincontainers,
              body: Column(
                children: [
                  HomeContainer(onPress: toggleMenu, text: 'Top Badges'),
                  Krectangle(
                    text1: 'Friends',
                    text2: 'All Members',
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 7),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                TabValue(0);
                              },
                              child: Container(
                                height: 42,
                                width: 86,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: currentTab == 0
                                          ? Kcolor
                                          : Colors.white,
                                      width: 1.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Day')),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                TabValue(1);
                              },
                              child: Container(
                                height: 42,
                                width: 86,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: currentTab == 1
                                          ? Kcolor
                                          : Colors.white,
                                      width: 1.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Week')),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                TabValue(2);
                              },
                              child: Container(
                                height: 42,
                                width: 86,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: currentTab == 2
                                          ? Kcolor
                                          : Colors.white,
                                      width: 1.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Month')),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                TabValue(3);
                              },
                              child: Container(
                                height: 42,
                                width: 86,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: currentTab == 3
                                          ? Kcolor
                                          : Colors.white,
                                      width: 1.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('All')),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: names.length,
                        itemBuilder: (BuildContext context, index) {
                          return Coustomlisttile(
                              image: AssetImage(ListImages[index]),
                              text: names[index]);
                        }),
                  )
                ],
              ),
            )))));
  }
}
