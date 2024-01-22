import 'package:figmadesign/actsofkindness.dart';
import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Creating extends StatefulWidget {
  const Creating({super.key});

  @override
  State<Creating> createState() => _CreatingState();
}

class _CreatingState extends State<Creating> {
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
                                            child: Image.asset(
                                                'assets/Group 17.png'),
                                          ),
                                          const Text(
                                            'Creating Opportunities',
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
                                  horizontal: 10, vertical: 20),
                              child: Column(children: [
                                CreatingContainers(),
                                const SizedBox(
                                  height: 20,
                                ),
                                // second container
                                Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                    child: Column(children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Image.asset(
                                                      'assets/Rectangle 2.png',
                                                      height: 50,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'High Momnetum',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15),
                                                        ),
                                                        Text(
                                                          'Feed Seniors',
                                                          style: TextStyle(
                                                              color:
                                                                  descriptionColor),
                                                        ),
                                                        Text(
                                                          'No. of Applicants : 37',
                                                          style: TextStyle(
                                                              color:
                                                                  descriptionColor),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  const Icon(Icons
                                                      .arrow_drop_down_outlined),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 5,
                                                        vertical: 3),
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child:
                                                        const Text('Remaining'),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0),
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: descriptionColor)),
                                              child: DataTable(columns: const [
                                                DataColumn(
                                                  label: Text(" Name"),
                                                ),
                                                DataColumn(
                                                  label: Text("Email"),
                                                ),
                                              ], rows: const [
                                                DataRow(cells: [
                                                  DataCell(
                                                    Text('Gorge Wattson'),
                                                  ),
                                                  DataCell(
                                                    Text('gorge124@gmail.com'),
                                                  ),
                                                ]),
                                                DataRow(cells: [
                                                  DataCell(
                                                    Text('Sam Curran'),
                                                  ),
                                                  DataCell(
                                                    Text(
                                                        'samcurran1521@gmail.com'),
                                                  ),
                                                ]),
                                                DataRow(cells: [
                                                  DataCell(
                                                    Text('Sam Curran'),
                                                  ),
                                                  DataCell(
                                                    Text(
                                                        'samcurran1521@gmail.com'),
                                                  ),
                                                ]),
                                              ]),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: descriptionColor,
                                              ),
                                              child: const Text('Show More'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])),
                                const SizedBox(
                                  height: 10,
                                ),
                                CreatingContainers(),
                                const SizedBox(
                                  height: 10,
                                ),
                                CreatingContainers(),
                              ]))
                        ])))));
  }
}

class CreatingContainers extends StatelessWidget {
  const CreatingContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/Rectangle 2.png',
                  height: 50,
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'High Momnetum',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'Feed Seniors',
                      style: TextStyle(color: descriptionColor),
                    ),
                    Text(
                      'No. of Applicants : 37',
                      style: TextStyle(color: descriptionColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.arrow_drop_down_outlined),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: const Text('Remaining'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
