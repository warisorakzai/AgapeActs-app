import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/individual.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Oppurtunities extends StatefulWidget {
  const Oppurtunities({super.key});

  @override
  State<Oppurtunities> createState() => _OppurtunitiesState();
}

class _OppurtunitiesState extends State<Oppurtunities> {
  List Oppurtunitiestext = [
    'Feed Seniors',
    'Domestic Violence Shelter',
    'Tackle Hunger : Donations',
    'Outreach Leader',
    'Be A Mentor',
    'Monthly Food Distribution',
    'Feed Seniors',
    'Feed Seniors',
  ];
  List Subtitle = [
    'With Glenn Dale Fire Association,Inc.',
    'With Doorways For Women And Families',
    'With Do Something',
    'With Glee Church, Inc.',
    'With Change A Childs Life, Inc.',
    'With New Creation Christian Church',
    'With Glenn Dale Fire Association,Inc.',
    'With Glenn Dale Fire Association,Inc.',
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
                    backgroundColor: Maincontainers,
                    body: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Kcolor,
                            height: 150,
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
                                        'Opportunities',
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              suffixIcon: Icon(Icons
                                                  .keyboard_arrow_down_rounded),
                                              // filled: true,
                                              // fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                // vertical: 20.0,
                                                horizontal: 20.0,
                                              ),
                                              labelText: 'Enter a zipcode',
                                              labelStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      // width: 0.2,
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      // width: 0.5,
                                                      color: Colors.black54),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              // filled: true,
                                              // fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                // vertical: 20.0,
                                                horizontal: 20.0,
                                              ),
                                              labelText:
                                                  'Distance(i.e. 10miles)',
                                              labelStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      // width: 0.2,
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      // width: 0.5,
                                                      color: Colors.black54),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: Subtitle.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    child: Column(
                                      children: [
                                        OppurtunitiesContainer(
                                            onpress: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return Individual();
                                              }));
                                            },
                                            Oppurtunitiestext:
                                                Oppurtunitiestext[index],
                                            Subtitle: Subtitle[index])
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ])))));
  }
}

class OppurtunitiesContainer extends StatelessWidget {
  const OppurtunitiesContainer({
    super.key,
    required this.Oppurtunitiestext,
    required this.Subtitle,
    required this.onpress,
  });

  final String Oppurtunitiestext;
  final String Subtitle;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Oppurtunitiestext,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Subtitle,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '4.7 Miles',
                    style: TextStyle(fontSize: 11, color: descriptionColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
