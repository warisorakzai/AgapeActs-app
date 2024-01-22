import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/homecontainer.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Friens extends StatefulWidget {
  const Friens({super.key});

  @override
  State<Friens> createState() => _FriensState();
}

class _FriensState extends State<Friens> {
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
    'assets/Group22.png',
    'assets/Group33.png',
    'assets/Group44.png',
    'assets/Group55.png',
    'assets/Ellipse 784.png',
    'assets/Ellipse 785.png',
    'assets/Ellipse 786.png',
    'assets/Ellipse 787.png',
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
                  HomeContainer(onPress: toggleMenu, text: 'Friends'),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.builder(
                        itemCount: Rowimages.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2.2,
                            mainAxisSpacing: 18,
                            crossAxisSpacing: 4,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage(Rowimages[index]),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    rowText[index],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ))));
  }
}
