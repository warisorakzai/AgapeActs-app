import 'package:avatar_stack/avatar_stack.dart';
import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool visibility = false;

  List RandomImages = [
    'assets/Ellipse 23.png',
    'assets/Rectangle 13.png',
    'assets/Group 4.png',
  ];
  List TileImages = [
    'assets/Ellipse 23.png',
    'assets/Rectangle 13.png',
    'assets/Group 4.png',
    'assets/Ellipse 23.png',
    'assets/Rectangle 13.png',
    'assets/Group 4.png',
    'assets/Ellipse 23.png',
    'assets/Rectangle 13.png',
    'assets/Group 4.png',
    'assets/Ellipse 23.png',
    'assets/Rectangle 13.png',
    'assets/Group 4.png',
  ];
  List circleImagesText = [
    'Jorge',
    'Maria',
    'Sara',
    'Jorge',
    'Maria',
    'Sara', 'Jorge',
    'Maria',
    'Sara', 'Jorge',
    'Maria',
    'Sara',
    // 'Kane',
    // 'Juliana',
    // 'Sara',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 2.2,
      width: MediaQuery.of(context).size.width / 1.1,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Ellipse 23.png'),
            ),
            title: Text('Dark_Emeralds'),
            subtitle: Container(
              margin: EdgeInsets.only(right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Spontaneous',
                  style: TextStyle(fontSize: 15, color: KSocialMedia),
                ),
              ),
            ),
            trailing: Container(
              height: 25,
              width: 56,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(204, 204, 204, 1),
                  borderRadius: BorderRadius.circular(18)),
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.mode_comment_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '47',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Lloyd was very helpful today by talking my mother food and snacks for the week.',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Stack(
            children: [
              Image.asset(
                'assets/Rectangle 13.png',
                height: 153,
                width: 310,
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
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              top: 20.0,
              right: 30.0,
              bottom: 40.0,
            ),
            child: Row(
              children: [
                AvatarStack(height: 23, width: 50, avatars: [
                  for (var n = 0; n < RandomImages.length; n++)
                    AssetImage(RandomImages[n].toString()),
                ]),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Connie and 56 other likes it',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(204, 204, 204, 1),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 84,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 0, 0, 0.12),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 08,
                    ),
                    Image.asset(
                      'assets/Vector.png',
                      height: 17,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Applaud',
                      style: TextStyle(color: Kcolor, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Image.asset(
                'assets/Vector2.png',
                height: 17,
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    visibility = !visibility;
                  });
                },
                child: Text(
                  'Comment',
                  style: TextStyle(
                      color: Color.fromRGBO(204, 204, 204, 1), fontSize: 12),
                ),
              ),
              SizedBox(
                width: 22,
              ),
              Image.asset(
                'assets/Vector3.png',
                height: 17,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Share',
                style: TextStyle(
                    color: Color.fromRGBO(204, 204, 204, 1), fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          visibility == true
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('View All Comment'),
                              Icon(
                                Icons.arrow_back_ios_new,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2.4,
                          width: MediaQuery.of(context).size.height / 1,
                          child: ListView.builder(
                              itemCount: TileImages.length,
                              itemBuilder: (BuildContext context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage(TileImages[index]),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          circleImagesText[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(' Awesome! btw you guyz'),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Icon(index / 2 == 0
                                            ? Icons.favorite
                                            : Icons.favorite_outline)
                                      ],
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
