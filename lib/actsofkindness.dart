import 'package:figmadesign/Nominate.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/coustompost.dart';
import 'package:figmadesign/drawerscreen.dart';
import 'package:figmadesign/homecontainer.dart';
import 'package:figmadesign/rectangle.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Viewmore extends StatefulWidget {
  const Viewmore({super.key});

  @override
  State<Viewmore> createState() => _ViewmoreState();
}

class _ViewmoreState extends State<Viewmore> {
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
        child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  HomeContainer(onPress: toggleMenu, text: 'Acts of Kindness'),
                  Krectangle(
                    text1: 'Individual',
                    text2: 'Organization',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: 12,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: EdgeInsets.all(6),
                            child: PostCard(),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
        background: Color(0xff31333E),
        key: _sideMenuKey,
        menu: Container(child: buildMenu(context)),
        type: SideMenuType.shrinkNSlide,
        onChange: (_isOpened) {
          setState(() => isOpened = _isOpened);
        },
      ),
    );
  }
}

Widget buildMenu(BuildContext context) {
  return SingleChildScrollView(
    child: SingleChildScrollView(
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyHomePage();
              }));
            },
            leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
            title: const Text(
              "Home",
              style: ftext,
            ),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.verified_user,
                size: 20.0, color: Colors.white),
            title: const Text("Profile", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.person, size: 20.0, color: Colors.white),
            title: const Text("Nominate", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.badge_sharp, size: 20.0, color: Colors.white),
            title: const Text("Badges", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.message, size: 20.0, color: Colors.white),
            title: const Text("Messages", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.notification_add,
                size: 20.0, color: Colors.white),
            title: const Text("Notifications", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.lightbulb, size: 20.0, color: Colors.white),
            title: const Text("Oppurtunities", style: ftext),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
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
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 16, color: Maincontainers),
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
    ),
  );
}
