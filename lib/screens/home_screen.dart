import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/screens/hotel_screen.dart';
import 'package:travelbuddy/screens/ticket_view.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const Gap(40),
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
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
            const Gap(25),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Flights",
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  onTap: (){
                    print("does not work");
                  },
                  child: Text(
                    "ViewAll",
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ]),
        ),
        Gap(20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              TicketView(),
            TicketView(),
              TicketView(),
            ],
          ),
        ),
        Gap(40),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hotels Near Me",
                style: Styles.headlineStyle2,
              ),
              InkWell(
                onTap: (){
                  print("does not work");
                },
                child: Text(
                  "ViewAll",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              ),
            ],
          ),
        ),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(left: 16),
    child: Row(
    children: [
    HotelScreen(),
    HotelScreen(),
    HotelScreen(),
    ],
    ),
    ),
    ]));
  }
}
