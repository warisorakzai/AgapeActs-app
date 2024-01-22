import 'package:flutter/material.dart';

class messagespost extends StatelessWidget {
  final String text;
  final image;
  const messagespost({
    required this.text,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.topRight, children: [
              Container(
                height: MediaQuery.of(context).size.height / 08,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Image.asset(image),
              ),
              Positioned(
                top: 11,
                right: 8,
                child: Container(
                  height: MediaQuery.of(context).size.height / 45,
                  width: 11,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ),
            ]),
            SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Discover little known secrets for live ',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                '3:57 am',
                style: TextStyle(fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
