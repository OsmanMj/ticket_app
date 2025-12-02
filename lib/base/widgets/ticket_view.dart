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
        child: Container(
          //color: Colors.yellow,
          margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
          child: Column(
            children: [
              // Top Blue Section with Gradient
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: isColor == null ? AppStyles.ticketGradient : null,
                  color: isColor == null ? null : AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  boxShadow: isColor == null ? AppStyles.softShadow : null,
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
                decoration: BoxDecoration(
                  gradient: isColor == null ? AppStyles.orangeGradient : null,
                  color: isColor == null ? null : AppStyles.ticketColor,
                ),
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

              // Bottom Orange Section with Gradient
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: isColor == null ? AppStyles.orangeGradient : null,
                  color: isColor == null ? null : AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 24 : 0),
                    bottomRight: Radius.circular(isColor == null ? 24 : 0),
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
