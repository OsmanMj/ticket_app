import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
// import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.dotColor,
        title: Container(
            padding: EdgeInsets.only(right: 50),
            child: Center(child: const Text("All Ticket"))),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: ticketList
            .map((singleTicket) => GestureDetector(
                  onTap: () {
                    //print("its tapping");
                    var index = ticketList.indexOf(singleTicket);
                    Navigator.pushNamed(context, '/ticket_screen',
                        arguments: {"index": index});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: TicketView(
                      ticket: singleTicket,
                      wholeScreen: true,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
