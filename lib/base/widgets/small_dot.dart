import 'package:flutter/material.dart';

class SmallDot extends StatelessWidget {
  const SmallDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        //color: Colors.red,
        border: Border.all(width: 2.5, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
