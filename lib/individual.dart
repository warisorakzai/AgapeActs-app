import 'package:figmadesign/Submitt.dart';
import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/kbutton.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Individual extends StatefulWidget {
  const Individual({super.key});

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              child: Image.asset(
                                                  'assets/Group 17.png'),
                                            ),
                                            const Text(
                                              'Individual Opportunity',
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
                                    ])),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      radius: 26,
                                      backgroundImage:
                                          AssetImage('assets/Ellipse 23.png'),
                                    ),
                                    title: InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Submit();
                                        }));
                                      },
                                      child: Text(
                                        'Feed Seniors',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Glen Dale Fire Association, Inc.',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: descriptionColor),
                                    ),
                                  ),
                                  Divider(
                                    color: descriptionColor,
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Help distribute boxes of fruit and vegetables or canned goods to low income senior citizens at AHC's Charter House. an affordable housing apartment building located in Silver Spring. Boxes will be placed outside apartment doors to minimize contact with residents. Boxes weigh between 20-40 pounds so volunteers must be able to lift that amount. AHC follows best practices for volunteers during COVID 19 including wearing masks and practicing social distancing.",
                                    style: TextStyle(color: descriptionColor),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: descriptionColor),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      child: Column(
                                        children: [
                                          IndividualContainer(
                                            icon: Icons.timelapse,
                                            text: 'Duration',
                                          ),
                                          Divider(
                                            color: descriptionColor,
                                            thickness: 1,
                                          ),
                                          IndividualContainer(
                                              icon: Icons.location_pin,
                                              text: 'Location'),
                                          Divider(
                                            color: descriptionColor,
                                            thickness: 1,
                                          ),
                                          IndividualContainer(
                                              icon: Icons.location_pin,
                                              text: 'Location'),
                                          Divider(
                                            color: descriptionColor,
                                            thickness: 1,
                                          ),
                                          IndividualContainer(
                                              icon: Icons.location_pin,
                                              text: 'Location'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Kbutton(text: 'I Want to Help', ontap: () {}),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            )
                          ]),
                    )))));
  }
}

class IndividualContainer extends StatelessWidget {
  const IndividualContainer({
    required this.icon,
    required this.text,
    super.key,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Color(0xffF8E0E0), shape: BoxShape.circle),
                  child: Icon(
                    icon,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thursday, December 17 from 1:30 pm - 2:30 pm',
                    style: TextStyle(color: descriptionColor, fontSize: 13),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Monday, December 21 from 12:30 - 1:30 pm',
                    style: TextStyle(color: descriptionColor, fontSize: 13),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Monday, January 11 from 12:30 - 1:30 pm',
                    style: TextStyle(color: descriptionColor, fontSize: 13),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
