import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate responsive heights based on available space
        final availableHeight = size.height * 0.55; // Use 55% of screen height
        final leftCardHeight = availableHeight;
        final rightCardHeight =
            (availableHeight - 15) / 2; // Split remaining space for two cards
        final imageHeight =
            leftCardHeight * 0.4; // 40% of card height for image

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left promotional card
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * .42,
                constraints: BoxConstraints(
                  maxHeight: leftCardHeight,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppStyles.priamryColor,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: imageHeight,
                      constraints: BoxConstraints(
                        minHeight: 120,
                        maxHeight: 190,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppMedia.planeSit))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: Text(
                        "20% discount on the early booking of this flight. Don't miss",
                        style: AppStyles.headLineStyle2,
                      ),
                    )
                  ],
                )),
            // Right column with two cards
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: size.width * .44,
                      constraints: BoxConstraints(
                        maxHeight: rightCardHeight,
                        minHeight: 150,
                      ),
                      decoration: BoxDecoration(
                          color: AppStyles.priamryColor,
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Discount\nfor survey",
                              style: AppStyles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: Text(
                                "Take the survey about our services and get discount",
                                style: AppStyles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: AppStyles.kakiColor)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .44,
                  constraints: BoxConstraints(
                    maxHeight: rightCardHeight,
                    minHeight: 150,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppStyles.planeColor),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Take Love",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: '😍',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        TextSpan(
                          text: '😘',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        TextSpan(text: '💗', style: TextStyle(fontSize: 12.0))
                      ]))
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
