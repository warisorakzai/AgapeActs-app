import 'package:figmadesign/constant.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final Color color;

  SocialMediaButton({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Icon(
        icon,
        color: color,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: KSocialMedia,
      ),
    );
  }
}
