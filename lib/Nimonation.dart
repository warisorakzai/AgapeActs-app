import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Nomination extends StatefulWidget {
  const Nomination({super.key});

  @override
  State<Nomination> createState() => _NominationState();
}

class _NominationState extends State<Nomination> {
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
                                        child:
                                            Image.asset('assets/Group 17.png'),
                                      ),
                                      const Text(
                                        'Nomination',
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
                                horizontal: 10, vertical: 20),
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 27,
                                      backgroundImage:
                                          AssetImage('assets/Ellipse 23.png'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Dark_Emeralds',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Lloyd was very helpful today by talking my mother food and snacks for the week."),
                                const SizedBox(
                                  height: 15,
                                ),
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/Rectangle 13.png',
                                    ),
                                    Positioned(
                                      top: 52,
                                      left: 135,
                                      child: Image.asset(
                                        'assets/Ellipse 24.png',
                                        height: 43,
                                      ),
                                    ),
                                    Positioned(
                                      top: 65,
                                      left: 151,
                                      child: Image.asset(
                                        'assets/play 1.png',
                                        height: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Why did you give?',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            NominationButton(
                                              txtColor: Colors.white,
                                              text: 'Spontaneous',
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            NominationButton(
                                              txtColor: Colors.white,
                                              text: 'Random',
                                              color: Colors.purple,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            NominationButton(
                                              txtColor: Colors.white,
                                              text: 'Bountiful',
                                              color: Color(0xffE1692D),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            NominationButton(
                                              txtColor: Colors.white,
                                              text: 'Heart of Gold',
                                              color: Color(0xffE1A93C),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            'The Spontaneous Giver gives based on a sudden inner impulse.'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Do you accept this nomination?',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            NominationButton(
                                              txtColor: Colors.black,
                                              color: Colors.white,
                                              text: 'Yes',
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            NominationButton(
                                                txtColor: Colors.black,
                                                color: Colors.red,
                                                text: 'No'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]))))));
  }
}

class NominationButton extends StatelessWidget {
  final String text;

  final Color color;
  final Color txtColor;
  const NominationButton({
    required this.txtColor,
    required this.color,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(color: descriptionColor),
            color: color,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: txtColor),
          ),
        ),
      ),
    );
  }
}
