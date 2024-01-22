// ignore_for_file: prefer_const_constructors, must_be_immutable, camel_case_types

import 'package:figmadesign/Friends.dart';
import 'package:figmadesign/Nimonation.dart';
import 'package:figmadesign/Nominate.dart';
import 'package:figmadesign/Oppurtunities.dart';
import 'package:figmadesign/Profile.dart';
import 'package:figmadesign/Settings.dart';
import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/coustompost.dart';
import 'package:figmadesign/homecontainer.dart';
import 'package:figmadesign/messages.dart';
import 'package:figmadesign/notification.dart';
import 'package:figmadesign/recognition.dart';
import 'package:figmadesign/rectangle.dart';
import 'package:figmadesign/rowwidget.dart';
import 'package:figmadesign/top.dart';
import 'package:figmadesign/topgivers.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        child: SafeArea(
          child: Scaffold(
            backgroundColor: KSocialMedia,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    HomeContainer(
                      onPress: toggleMenu,
                      text: 'Home',
                    ),
                    Krectangle(
                      text1: 'Friends',
                      text2: 'All Members',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Acts of Kindness',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Viewmore();
                              }));
                            },
                            child: Text(
                              'View More',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Kcolor,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  decorationColor: Kcolor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PostCard(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Givers',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Topgivers();
                              }));
                            },
                            child: Text(
                              'View More',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Kcolor,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  decorationColor: Kcolor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    RowContainer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Badges',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Topbadges();
                              }));
                            },
                            child: Text(
                              'View More',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Kcolor,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  decorationColor: Kcolor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RowContainer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Oppurtunities to give',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'View More',
                            style: TextStyle(
                                fontSize: 13,
                                color: Kcolor,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                decorationColor: Kcolor),
                          ),
                        ],
                      ),
                    ),
                    oppurtunitiesContainer(
                      text: 'Feed Seniors',
                      texts: 'With Door ways for women and famillies',
                      texts1: '4.7 Miles',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    oppurtunitiesContainer(
                      text: 'Monthly Food Distribution',
                      texts: 'With new creation christian church',
                      texts1: '5.1 Miles',
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenu(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 67, 71),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 65,
                  width: 200,
                  child: ListTile(
                    leading: Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/Ellipse 23.png'),
                        ),
                      ],
                    ),
                    title: Text(
                      "Dark_Emeralds",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.location_pin,
                          size: 13,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 02,
                        ),
                        Text(
                          'Georgia',
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36.0),
              ],
            ),
          ),
          ListTile(
            selectedColor: Colors.amber,
            focusColor: Colors.amber,
            onTap: () {},
            leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
            title: const Text(
              "Home",
              style: ftext,
            ),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Profile();
              }));
            },
            leading: const Icon(Icons.verified_user,
                size: 20.0, color: Colors.white),
            title: const Text("Profile", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Nominate();
              }));
            },
            leading: const Icon(Icons.person, size: 20.0, color: Colors.white),
            title: const Text("Nominate", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Friens();
              }));
            },
            leading: const Icon(Icons.person_4_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Friends", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Recognition();
              }));
            },
            leading:
                const Icon(Icons.badge_sharp, size: 20.0, color: Colors.white),
            title: const Text("Badges", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Messages();
              }));
            },
            leading: const Icon(Icons.message, size: 20.0, color: Colors.white),
            title: const Text("Messages", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NotificationScrren();
              }));
            },
            leading: const Icon(Icons.notification_add,
                size: 20.0, color: Colors.white),
            title: const Text("Notifications", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Nomination();
              }));
            },
            leading:
                const Icon(Icons.lightbulb, size: 20.0, color: Colors.white),
            title: const Text("Nomination", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Oppurtunities();
              }));
            },
            leading:
                const Icon(Icons.lightbulb, size: 20.0, color: Colors.white),
            title: const Text("Oppurtunities", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 25,
                ),
                Icon(
                  Icons.settings,
                  color: Maincontainers,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 28,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AppSettings();
                    }));
                  },
                  child: Text(
                    'Settings',
                    style: TextStyle(fontSize: 16, color: Maincontainers),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12,
                ),
                Container(
                  height: 15,
                  width: 2,
                  color: Maincontainers,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 14,
                ),
                Text(
                  'Log out',
                  style: TextStyle(fontSize: 16, color: Maincontainers),
                )
              ],
            ),
          )
          // Your menu items here
        ],
      ),
    );
  }
}

class oppurtunitiesContainer extends StatelessWidget {
  final String text;
  final String texts;
  final String texts1;

  const oppurtunitiesContainer({
    required this.text,
    required this.texts,
    required this.texts1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 343,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
        subtitle: Text(
          texts,
          style: TextStyle(fontSize: 12),
        ),
        trailing: Container(
          height: 25,
          width: 56,
          decoration: BoxDecoration(
              color: Color.fromRGBO(204, 204, 204, 1),
              borderRadius: BorderRadius.circular(18)),
          child: Center(child: Text(texts1)),
        ),
      ),
    );
  }
}

class rowWidget extends StatelessWidget {
  List circleImages = [
    'assets/Ellipse 784.png',
    'assets/Ellipse 785.png',
    'assets/Ellipse 786.png',
    'assets/Ellipse 23.png',
    'assets/Ellipse 24.png',
    'assets/Ellipse 23.png',
  ];

  List circleImagesText = [
    'Jorge',
    'Maria',
    'Sara',
    'Kane',
    'Juliana',
    'Sara',
  ];
  rowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: circleImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(circleImages[index]),
                ),
              ),
              Text(circleImagesText[index])
            ],
          );
        });
  }
}
