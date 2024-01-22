import 'package:dotted_border/dotted_border.dart';
import 'package:figmadesign/Friends.dart';
import 'package:figmadesign/Nimonation.dart';
import 'package:figmadesign/Nominate.dart';
import 'package:figmadesign/Oppurtunities.dart';
import 'package:figmadesign/Profile.dart';
import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/messages.dart';
import 'package:figmadesign/notification.dart';
import 'package:figmadesign/recognition.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
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
              body: Column(
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
                                top: 30,
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      toggleMenu();
                                    }, // Call the function passed here
                                    child: Image.asset('assets/Group 17.png'),
                                  ),
                                  const Text(
                                    'Settings',
                                    style: TextStyle(
                                        fontSize: 20, color: Maincontainers),
                                  ),
                                  const Icon(
                                    Icons.more_vert_rounded,
                                    color: Maincontainers,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: DottedBorder(
                                strokeWidth: 2,
                                borderType: BorderType.Circle,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage:
                                          AssetImage('assets/Ellipse 23.png'),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Jorge Wattson',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: descriptionColor,
                              ),
                              Text(
                                'Georgia',
                                style: TextStyle(color: descriptionColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF8E0E0)),
                              child: Icon(
                                Icons.person,
                                color: Colors.red,
                              ),
                            ),
                            title: Text('Account'),
                            subtitle: Text(
                              'Change your name, phone number,etc',
                              style: TextStyle(fontSize: 12),
                            ),
                            trailing: Icon(Icons.arrow_forward),
                          ),
                          Divider(),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF8E0E0)),
                              child: Icon(
                                Icons.security,
                                color: Colors.red,
                              ),
                            ),
                            title: Text('Security'),
                            subtitle: Text(
                              'Change your name, phone number,etc',
                              style: TextStyle(fontSize: 12),
                            ),
                            trailing: Icon(Icons.arrow_forward),
                          ),
                          Divider(),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF8E0E0)),
                              child: Icon(
                                Icons.comment,
                                color: Colors.red,
                              ),
                            ),
                            title: Text('Activity'),
                            subtitle: Text(
                              'Change your name, phone number,etc',
                              style: TextStyle(fontSize: 12),
                            ),
                            trailing: Icon(Icons.arrow_forward),
                          ),
                          Divider(),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF8E0E0)),
                              child: Icon(
                                Icons.help,
                                color: Colors.red,
                              ),
                            ),
                            title: Text('Help'),
                            subtitle: Text(
                              'Change your name, phone number,etc',
                              style: TextStyle(fontSize: 12),
                            ),
                            trailing: Icon(Icons.arrow_forward),
                          ),
                          Divider(),
                        ],
                      ),
                    )
                  ]),
            ))));
  }
}

Widget build(BuildContext context) {
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
          leading:
              const Icon(Icons.verified_user, size: 20.0, color: Colors.white),
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
          leading: const Icon(Icons.lightbulb, size: 20.0, color: Colors.white),
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
          leading: const Icon(Icons.lightbulb, size: 20.0, color: Colors.white),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
