// ignore_for_file: equal_keys_in_map, duplicate_ignore

import 'package:figmadesign/constant.dart';
import 'package:figmadesign/drawerscreen.dart';
import 'package:figmadesign/kbutton.dart';
import 'package:figmadesign/mainScreen.dart';
import 'package:flutter/material.dart';

class mypage extends StatefulWidget {
  mypage({super.key});

  @override
  State<mypage> createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  List onBoardingDate = [
    {
      "image": 'assets/Rectangle 6.png',
      "title": 'Nominate a Giver',
      "description":
          'We want to Congratulate the givers in the world and give them recogonization for their good deeds.Nomite a giver to show the world their good deeds',
    },
    {
      "image": 'assets/Rectangle 2.png',
      "title": 'Give Agape Tokens',
      "description":
          'Give your nominee Agape tokens to show your appreciation for their acts of kindness. The Agape token is a token of appreciation to say thank you.',
    },
    {
      "image": 'assets/Rectangle 3.png',
      "title": 'Tell The Story',
      "description":
          'Let the world know how great your nominee has been. Explain their acts of kindness, upload videos and images of the good deed or its results.'
    },
    {
      "image": 'assets/Rectangle 4.png',
      "title": 'Give an Applaus',
      "description":
          'Once your giver receives their Agape Tokens, they can receive an applause from all Agape members. Everyone wants to recognize a job well done.',
    },
    {
      "image": 'assets/Rectangle 5.png',
      "title": 'Agape Badges',
      "description":
          'Agape Badges are given to members that give abundantly. Build up your Agape Tokens to achieve Lifetime Achivement Badges.'
    },
    {
      "image": 'assets/Rectangle 5.png',
      "title": 'Agape Gives Community',
      "description":
          'Interact the Agape Givers Community.You can applaud acts of kindness, add friends, and send kind messages. Thiscommunity was built to show love.',
    },
    {
      "image": 'assets/Rectangle 5.png',
      "title": 'View Opportunity to Give',
      "description":
          'View Opportunity to Give Are you looking for an opportunity to make a difference? We provide list of opportunities so you can assist organizations in your local community.',
    },
  ];
  int currentPage = 0;
  onChanged(int index) {
    currentPage = index;
    setState(() {});
  }

  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2.8,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 22),
              child: Image.asset(
                'assets/Group.png',
                height: 21,
              ),
            ),
          ),
          PageView.builder(
            onPageChanged: onChanged,
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: onBoardingDate.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    child: Image.asset(
                      onBoardingDate[index]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(onBoardingDate.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: AnimatedContainer(
                              height: 10,
                              width: (currentPage == index) ? 8 : 8,
                              decoration: BoxDecoration(
                                  color: (index == currentPage)
                                      ? Colors.deepOrange
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                              duration: Duration(microseconds: 200)),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 27,
                  ),
                  Text(
                    onBoardingDate[index]['title'],
                    style: TextStyle(
                        fontSize: 20,
                        color: titleColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                    child: Text(
                      onBoardingDate[index]['description'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: descriptionColor),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  (currentPage == 6)
                      ? Kbutton(
                          text: 'Explore Agape',
                          ontap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MainScreen();
                            }));
                          })
                      : Kbutton(
                          text: 'Continue',
                          ontap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MyHomePage();
                            }));
                          })
                ],
              );
            },
          ),
        ],
      )),
    );
  }
}
