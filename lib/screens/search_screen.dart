import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/utilis/app_layout.dart';
import 'package:travelbuddy/utilis/utilis.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),
        vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\n you Looking for?', style: Styles.headlineStyle.copyWith(fontSize: AppLayout.getHeight(35))),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                color: const Color(0xFFF4F6FD)
              ),
              child: Row(children: [
                Container(
                  width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(6),),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(10))),
                        color: Colors.white,
                    ),
                  child: const Center(child: Text('AirLines Tickets')),
                ),
                Container(
                  width: size.width * 0.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7),),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(10))),
                  ),
                  child: const Center(child: Text('Hotels')),
                ),

              ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25),),
          Container(
            padding: ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(5),),
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff_rounded,
                color: Color(0xFFBFC2DF) ,),
                Gap(AppLayout.getWidth(10),),
                Text('Departure', style: Styles.textStyle,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
