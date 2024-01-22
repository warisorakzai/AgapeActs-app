import 'package:figmadesign/Creating.dart';
import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/kbutton.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Submit extends StatefulWidget {
  const Submit({super.key});

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
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
                                            child: Image.asset(
                                                'assets/Group 17.png'),
                                          ),
                                          const Text(
                                            'Submit Opportunity',
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
                                horizontal: 10, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SubmitField(
                                  hintText: 'Title of Opportunity',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SubmitField(
                                  hintText: 'Title of Opportunity',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: descriptionColor),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 5),
                                        child: Text(
                                          'Description of the Volunteer Opportunity',
                                          style: TextStyle(fontSize: 12.61),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 100),
                                            Text(
                                              'Up to 500 characters',
                                              style: TextStyle(
                                                  fontSize: 12.89,
                                                  color: descriptionColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Select Date',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SubmitField(
                                  hintText: 'Title of Opportunity',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: SubmitField(
                                        hintText:
                                            'Organization Requesting Volunteers',
                                      ),
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: SubmitField(
                                        hintText: '13/08/2021',
                                        iconData: Icons.calendar_month,
                                      ),
                                    )),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Address',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SubmitField(
                                  hintText: 'Start Time',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SubmitField(
                                  hintText: 'End Time',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: SubmitField(
                                        hintText: 'Address line 1',
                                      ),
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: SubmitField(
                                        hintText: 'Address line 2 (Optional)',
                                      ),
                                    )),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SubmitField(
                                  hintText: 'City Name',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'List the Opportunity Requirements',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SubmitField(
                                  hintText: 'Personal Vehicle',
                                  iconData: Icons.add_outlined,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Great Opportunity for',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SubmitField(
                                  hintText: 'Teenager and Parent',
                                  iconData: Icons.add_rounded,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Kbutton(
                                    text: 'Submit Opportunity',
                                    ontap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Creating();
                                      }));
                                    })
                              ],
                            ),
                          ),
                        ]))))));
  }
}

class SubmitField extends StatelessWidget {
  final String hintText;
  IconData? iconData;
  SubmitField({
    required this.hintText,
    this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            // vertical: 20.0,
            horizontal: 20.0,
          ),
          labelText: hintText,
          suffixIcon: Icon(
            iconData,
            color: Colors.red,
          ),
          labelStyle: TextStyle(color: descriptionColor, fontSize: 15),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.2, color: descriptionColor),
              borderRadius: BorderRadius.circular(40)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  // width: 0.5,
                  color: Colors.black54),
              borderRadius: BorderRadius.circular(40))),
    );
  }
}
