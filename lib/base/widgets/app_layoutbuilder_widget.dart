import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool? isColor;
  const AppLayoutbuilderWidget(
      {super.key, required this.randomDivider, this.width = 3, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      //print("${constraints.constrainWidth()}");
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / randomDivider).floor(),
              (index) => SizedBox(
                    width: width,
                    height: 2,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? AppStyles.bgColor
                                : Colors.grey.shade300)),
                  )));
    });
  }
}
