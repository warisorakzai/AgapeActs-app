import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/homecontainer.dart';
import 'package:figmadesign/rectangle.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Topgivers extends StatefulWidget {
  const Topgivers({super.key});

  @override
  State<Topgivers> createState() => _TopgiversState();
}

class _TopgiversState extends State<Topgivers> {
  bool isOpened = false;
  int? currentTab = 0;

  getTabValue(int x) {
    currentTab = x;
    setState(() {});
  }

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
                HomeContainer(onPress: toggleMenu, text: 'Top givers'),
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
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            getTabValue(0);
                          },
                          child: Container(
                            height: 42,
                            width: 86,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:
                                        currentTab == 0 ? Kcolor : Colors.white,
                                    width: 1.4),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Day',
                              style: TextStyle(fontSize: 15),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            getTabValue(1);
                          },
                          child: Container(
                            height: 42,
                            width: 86,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:
                                        currentTab == 1 ? Kcolor : Colors.white,
                                    width: 1.4),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Week',
                              style: TextStyle(fontSize: 15),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            getTabValue(2);
                          },
                          child: Container(
                            height: 42,
                            width: 86,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:
                                        currentTab == 2 ? Kcolor : Colors.white,
                                    width: 1.4),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Month',
                              style: TextStyle(fontSize: 15),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            getTabValue(3);
                          },
                          child: Container(
                            height: 42,
                            width: 86,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:
                                        currentTab == 3 ? Kcolor : Colors.white,
                                    width: 1.4),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'All',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemCount: circleImages.length,
                        itemBuilder: (BuildContext context, index) {
                          return Coustomlisttile(
                            image: AssetImage(
                              circleImages[index],
                            ),
                            text: circleImagesText[index],
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class Coustomlisttile extends StatelessWidget {
  final image;
  final String text;
  Coustomlisttile({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
        height: 65,
        width: 335,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: image,
            radius: 22,
          ),
          title: Text(text),
          subtitle: Text(
            '10 Agape Tokens',
            style: TextStyle(fontSize: 12, color: descriptionColor),
          ),
          trailing: Container(
            height: 27,
            width: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Kcolor,
            ),
            child: Center(
              child: Text(
                'View Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
