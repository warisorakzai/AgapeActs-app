import 'package:figmadesign/Messagespost.dart';
import 'package:figmadesign/Profile.dart';
import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List rowText = [
    'JorgeWattson',
    'LuraFernandez',
    'Kyle Hopkins',
    'CorneliaLarson',
    'CorneliaLarson',
    'Leila Carson',
    'JorgeWattson',
    'LuraFernandez',
    'Kyle Hopkins',
    'CorneliaLarson',
    'CorneliaLarson',
    'Leila Carson',
    'JorgeWattson',
    'LuraFernandez',
    'Kyle Hopkins',
    'CorneliaLarson',
  ];
  List Rowimages = [
    'assets/Ellipse 784.png',
    'assets/Ellipse 785.png',
    'assets/Ellipse 786.png',
    'assets/Ellipse 787.png',
    'assets/Group22.png',
    'assets/Group33.png',
    'assets/Group44.png',
    'assets/Group55.png',
    'assets/Group22.png',
    'assets/Group33.png',
    'assets/Group44.png',
    'assets/Group55.png',
    'assets/Ellipse 784.png',
    'assets/Ellipse 785.png',
    'assets/Ellipse 786.png',
    'assets/Ellipse 787.png',
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  toggleMenu();
                                }, // Call the function passed here
                                child: Image.asset('assets/Group 17.png'),
                              ),
                              const Text(
                                'Messages',
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return messagespost(
                        text: rowText[index],
                        image: Rowimages[index],
                      );
                    }),
                  )
                ],
              ),
            ))));
  }
}
