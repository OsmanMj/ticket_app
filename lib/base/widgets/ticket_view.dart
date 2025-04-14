import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
//import 'package:ticket_app/base/widgets/small_dot.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: size.width * 0.70,
        height: 180,
        child: Container(
          margin: EdgeInsets.only(right: 13),
          //color: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    // show departure and destanation with first line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "NYC",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        BigDot(),
                        //SmallDot(),
                        //SmallDot(),
                        //SmallDot(),
                        // we tow items overlap we use Stack widget
                        // so stack widget when we have stuff into each other or on top of each other
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Icon(
                                FluentSystemIcons.ic_fluent_airplane_filled,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )),

                        //Expanded(child: Container()),
                        //SmallDot(),
                        //SmallDot(),
                        //SmallDot(),
                        BigDot(),
                        Expanded(child: Container()),
                        //  Icon(
                        //  FluentSystemIcons.ic_fluent_airplane_regular,
                        // color: Colors.white,
                        //),
                        Text(
                          "LDN",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "New-York",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "8H 45M",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "London",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: AppStyles.ticketBlue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21),
                        ),
                      ),
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
