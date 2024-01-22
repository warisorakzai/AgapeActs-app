import 'package:figmadesign/Friends.dart';
import 'package:figmadesign/Nimonation.dart';
import 'package:figmadesign/Nominate.dart';
import 'package:figmadesign/Oppurtunities.dart';
import 'package:figmadesign/Profile.dart';
import 'package:figmadesign/Settings.dart';
import 'package:figmadesign/constant.dart';
import 'package:figmadesign/messages.dart';
import 'package:figmadesign/notification.dart';
import 'package:figmadesign/recognition.dart';
import 'package:flutter/material.dart';

Widget build(BuildContext context) {
  return SingleChildScrollView(
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
          onTap: () {},
          leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
          title: const Text(
            "Home",
            style: ftext,
          ),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Profile();
            }));
          },
          leading:
              const Icon(Icons.verified_user, size: 20.0, color: Colors.white),
          title: const Text("Profile", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Nominate();
            }));
          },
          leading: const Icon(Icons.person, size: 20.0, color: Colors.white),
          title: const Text("Nominate", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Friens();
            }));
          },
          leading: const Icon(Icons.person_4_outlined,
              size: 20.0, color: Colors.white),
          title: const Text("Friends", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Recognition();
            }));
          },
          leading:
              const Icon(Icons.badge_sharp, size: 20.0, color: Colors.white),
          title: const Text("Badges", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Messages();
            }));
          },
          leading: const Icon(Icons.message, size: 20.0, color: Colors.white),
          title: const Text("Messages", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NotificationScrren();
            }));
          },
          leading: const Icon(Icons.notification_add,
              size: 20.0, color: Colors.white),
          title: const Text("Notifications", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Nomination();
            }));
          },
          leading: const Icon(Icons.lightbulb, size: 20.0, color: Colors.white),
          title: const Text("Nomination", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Oppurtunities();
            }));
          },
          leading: const Icon(Icons.lightbulb, size: 20.0, color: Colors.white),
          title: const Text("Oppurtunities", style: ftext),
          textColor: Colors.white,
          dense: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AppSettings();
                  }));
                },
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 16, color: Maincontainers),
                ),
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
  );
}
