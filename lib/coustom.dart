import 'package:flutter/material.dart';

class coustomField extends StatelessWidget {
  final String text;
  final IconData icon;
  const coustomField({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            // vertical: 20.0,
            horizontal: 15.0,
          ),
          prefixIcon: Icon(icon),
          labelText: text,
          labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.2, color: Colors.black54),
              borderRadius: BorderRadius.circular(40)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.5, color: Colors.black54),
              borderRadius: BorderRadius.circular(40))),
    );
  }
}
