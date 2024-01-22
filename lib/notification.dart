import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class NotificationScrren extends StatefulWidget {
  const NotificationScrren({super.key});

  @override
  State<NotificationScrren> createState() => _NotificationScrrenState();
}

class _NotificationScrrenState extends State<NotificationScrren> {
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
                  backgroundColor: Maincontainers,
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 10, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          toggleMenu();
                                        }, // Call the function passed here
                                        child:
                                            Image.asset('assets/Group 17.png'),
                                      ),
                                      const Text(
                                        'Notifications',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Maincontainers),
                                      ),
                                      const Icon(
                                        Icons.more_vert_rounded,
                                        color: Maincontainers,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableNotification(
                                  text1:
                                      'David Warner commented on uour token.',
                                  text2: '08h ago',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableNotification(
                                    text1: 'Jane Smith applauded your token. ',
                                    text2: '08h ago'),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableRow2(
                                  text1:
                                      'Aarya Stark Wants to be\nYour Friend.',
                                  text2: '08h ago',
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Yesterday',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableRow2(
                                    text1: 'Shane wants to show \ngrati',
                                    text2: '1d ago'),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableNotification(
                                    text1: 'Sansa kane applauded your token. ',
                                    text2: '1d ago'),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableRow2(
                                  text1:
                                      'Aarya Stark Wants to be\nYour Friend.',
                                  text2: '08h ago',
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'This Week',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableRow2(
                                    text1: 'Shane wants to show \ngrati',
                                    text2: '1d ago'),
                                SizedBox(
                                  height: 15,
                                ),
                                ReusableNotification(
                                    text1: 'Sansa kane applauded your token. ',
                                    text2: '1d ago'),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          )
                        ]),
                  )),
            )));
  }
}

class ReusableRow2 extends StatelessWidget {
  final String text1;
  final String text2;

  const ReusableRow2({
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/Ellipse 779.png'),
          backgroundColor: Colors.amber,
          radius: 30,
        ),
        SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
              text: text1,
              style: TextStyle(fontSize: 13, color: Colors.black),
              children: [
                TextSpan(
                    text: text2,
                    style: TextStyle(fontSize: 9, color: descriptionColor))
              ]),
        ),
        SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: Text('Accept'),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Text('cancel'),
          ),
        ),
      ],
    );
  }
}

class ReusableNotification extends StatelessWidget {
  final String text1;
  final String text2;

  const ReusableNotification({
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/Ellipse 23.png'),
          radius: 30,
          backgroundColor: Colors.amber,
        ),
        SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
            text: "$text1\n",
            style: TextStyle(fontSize: 13, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: text2,
                  style: TextStyle(fontSize: 9, color: descriptionColor)),
            ],
          ),
        )
      ],
    );
  }
}
