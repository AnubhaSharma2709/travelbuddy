import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/screens/hotel_screen.dart';
import 'package:travelbuddy/screens/ticket_view.dart';
import 'package:travelbuddy/utilis/app_info_list.dart';
import 'package:travelbuddy/utilis/app_layout.dart';

import '../utilis/utilis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),),
            child: Column(children: [
              Gap( AppLayout.getHeight(40),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: Styles.headlineStyle3),
                      Gap(5),
                      Text(
                        "Book Tickets",
                        style: Styles.headlineStyle2,
                      ),
                    ],
                  ),
                  Container(
                    height: AppLayout.getHeight(75),
                    width: AppLayout.getHeight(75),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "lib/images/homePage_image.png",
                        ),
                      ),
                    ),
                  )
                ],
              ),
               Gap(AppLayout.getHeight(25)),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(12),
                  vertical: AppLayout.getHeight(12),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  color: Colors.white60,
                ),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.black12),
                    Text(
                      'Search',
                      style: Styles.headlineStyle4,
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Flights",
                    style: Styles.headlineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print("does not work");
                    },
                    child: Text(
                      "ViewAll",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              ),
            ]),
          ),
          Gap(AppLayout.getHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:EdgeInsets.only(left: AppLayout.getHeight(16)),
            child: Row(
              children: ticketList.map((singleticket)=> TicketView(ticket: singleticket)).toList()
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(14),
              vertical: AppLayout.getHeight(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels Near Me",
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print("does not work");
                  },
                  child: Text(
                    "ViewAll",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(16)),
            child: Row(
              children: hotelList.map((singlehotel)=> HotelScreen(hotel: singlehotel)).toList(),
            ),
          ),
        ]));
  }
}
