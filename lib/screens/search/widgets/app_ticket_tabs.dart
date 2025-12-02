import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs(
      {super.key, required this.firstText, required this.SecondText});
  final String firstText;
  final String SecondText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white70,
      ),
      child: Row(
        children: [
          AppTabs(tabText: firstText),
          AppTabs(
            tabText: SecondText,
            tabbBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabbBorder = false,
      this.tabColor = false});
  final String tabText;
  final bool tabbBorder;
  final bool tabColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 9),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabbBorder == false
              ? BorderRadius.horizontal(left: Radius.circular(50))
              : BorderRadius.horizontal(right: Radius.circular(50)),
          boxShadow: tabColor == false
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null),
      child: Center(
        child: Text(
          tabText,
          style: TextStyle(
            fontWeight: tabColor == false ? FontWeight.w600 : FontWeight.w500,
            color: tabColor == false ? Colors.black87 : Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
