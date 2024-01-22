// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/coustompost.dart';

import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                scrollDirection: Axis.vertical,
                child: Column(children: [
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
                                'Profile',
                                style: TextStyle(
                                    fontSize: 20, color: Maincontainers),
                              ),
                              InkWell(
                                onTap: () {
                                  bottom(context);
                                },
                                child: const Icon(
                                  Icons.more_vert_rounded,
                                  color: Maincontainers,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          'assets/Rectangle 6509.png',
                        ),
                        Positioned(
                          bottom: 120,
                          left: 15,
                          child: Image.asset(
                            'assets/Ellipse 779.png',
                            height: 71,
                          ),
                        ),
                        const Positioned(
                          left: 10,
                          bottom: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Anisha Watson',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: descriptionColor,
                                  ),
                                  Text(
                                    'Georgia',
                                    style: TextStyle(
                                        fontSize: 14, color: descriptionColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          left: 8,
                          bottom: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '18',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Friends',
                                style: TextStyle(
                                  color: descriptionColor,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '314',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' Agape Tokens',
                                style: TextStyle(
                                  color: descriptionColor,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                '1.3k',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' Applaud',
                                style: TextStyle(
                                  color: descriptionColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Agape Badges',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/Group11.png',
                                height: 59,
                              ),
                              Image.asset(
                                'assets/Group22.png',
                                height: 59,
                              ),
                              Image.asset(
                                'assets/Group33.png',
                                height: 59,
                              ),
                              Image.asset(
                                'assets/Group44.png',
                                height: 59,
                              ),
                              Image.asset(
                                'assets/Group55.png',
                                height: 59,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            'About',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 84,
                            width: 344,
                            decoration: BoxDecoration(
                                color: Maincontainers,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "A Passionate coder.Loves to swim and dance.An Enthusiastic Designer. Loves reading books. Always being positive.Sarcastic humor.",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Text(
                            'Act Of Kindness',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                        itemCount: 12,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return PostCard();
                        }),
                  ),
                ]),
              ),
            ))));
  }
}

void bottom(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Bottomsheet(
                  text: 'Nominate',
                  icon: Icons.person,
                ),
                Divider(
                  color: divider,
                ),
                Bottomsheet(
                  text: 'Friends',
                  icon: Icons.group,
                ),
                Divider(
                  color: divider,
                ),
                Bottomsheet(text: 'Badges', icon: Icons.badge),
                Divider(
                  color: divider,
                ),
                Bottomsheet(
                  text: 'Messages',
                  icon: Icons.message,
                ),
                Divider(
                  color: divider,
                ),
                Bottomsheet(
                  text: 'Notifications',
                  icon: Icons.notifications_active,
                ),
                Divider(
                  color: divider,
                ),
                Bottomsheet(
                  text: 'Opportunities',
                  icon: Icons.lightbulb_sharp,
                ),
                Divider(
                  color: divider,
                ),
                Bottomsheet(
                    icon: Icons.thumb_up_outlined, text: 'Recommendations')
              ],
            ),
          ),
        ),
      );
    },
  );
}

class Bottomsheet extends StatelessWidget {
  final IconData icon;
  final String text;
  const Bottomsheet({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Row(
        children: [
          CircleAvatar(
            radius: 17,
            backgroundColor: Color(0xffF8E0E0),
            child: Icon(icon, color: Color(0xffC60000)),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
