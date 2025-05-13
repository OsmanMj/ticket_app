import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/widgets.dart';

class AppColoumTextLayout extends StatelessWidget {
  final String TopText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColoumTextLayout(
      {super.key,
      required this.TopText,
      required this.bottomText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
          text: TopText,
          isColor: isColor,
        ),
        SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: bottomText,
          isColor: isColor,
        ),
      ],
    );
  }
}
