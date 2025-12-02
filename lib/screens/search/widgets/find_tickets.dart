import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        gradient: AppStyles.searchGradient,
        borderRadius: BorderRadius.circular(16),
        boxShadow: AppStyles.softShadow,
      ),
      child: Center(
          child: Text(
        "find Tickets",
        style: AppStyles.textStyle.copyWith(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      )),
    );
  }
}
