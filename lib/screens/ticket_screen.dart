import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/Widgets/ticket_tabs.dart';
import 'package:travelbuddy/screens/ticket_view.dart';
import 'package:travelbuddy/utilis/app_info_list.dart';
import 'package:travelbuddy/utilis/app_layout.dart';
import 'package:travelbuddy/utilis/utilis.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getWidth(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40),),
              Text("Tickets",style: Styles.headlineStyle),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(ticket: ticketList[0],),
              ),
            ],
          )
        ],
      ),
    );
  }
}
