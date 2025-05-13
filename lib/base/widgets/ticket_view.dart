import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/widgets.dart';
//import 'package:ticket_app/base/utils/all_json.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      //margin: EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: size.width * 0.72,
        height: 156,
        child: Container(
          //color: Colors.yellow,
          margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
          child: Column(
            children: [
              // Top Blue Section
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextStyleThird(
                          text: ticket["from"]["code"],
                          isColor: isColor,
                        ),
                        const Spacer(),
                        BigDot(
                          isColor: isColor,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
                                child: AppLayoutbuilderWidget(randomDivider: 6),
                              ),
                              Center(
                                child: Icon(
                                  FluentSystemIcons.ic_fluent_airplane_filled,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.planeSecondColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        BigDot(
                          isColor: isColor,
                        ),
                        const Spacer(),
                        TextStyleThird(
                          text: ticket["to"]["code"],
                          isColor: isColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 1),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["from"]["name"],
                            isColor: isColor,
                          ),
                        ),
                        const Spacer(),
                        TextStyleFourth(
                          text: ticket["flying_time"],
                          isColor: isColor,
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["to"]["name"],
                            isColor: isColor,
                            align: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Middle Orange Divider Section
              Container(
                color: isColor == null
                    ? AppStyles.planeColor
                    : AppStyles.ticketColor,
                child: Row(
                  children: [
                    BigCircle(
                      isRight: false,
                      isColor: isColor,
                    ),
                    Expanded(
                      child: AppLayoutbuilderWidget(
                        randomDivider: 16,
                        width: 8,
                        isColor: isColor,
                      ),
                    ),
                    BigCircle(
                      isRight: true,
                      isColor: isColor,
                    ),
                  ],
                ),
              ),

              // Bottom Orange Section
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.planeColor
                      : AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColoumTextLayout(
                          TopText: ticket["date"],
                          bottomText: "DATE",
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                        AppColoumTextLayout(
                          TopText: ticket["departure_time"],
                          bottomText: "Departure Time",
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColoumTextLayout(
                          TopText: ticket["number"].toString(),
                          bottomText: "Number",
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
