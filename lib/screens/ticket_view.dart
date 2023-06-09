import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/Widgets/PlaneContainer.dart';

import '../utilis/app_layout.dart';
import '../utilis/utilis.dart';

class TicketView extends StatelessWidget {
final Map<String, dynamic> ticket;
const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right:  AppLayout.getHeight(16)),
        child: Column(
          children: [
            //upper part of the ticket
            Container(
              decoration: BoxDecoration(
                color: Styles.blueColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular( AppLayout.getHeight(21)),
                    topRight: Radius.circular( AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.all( AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      ticket['from']['code'],
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    PlaneContainer(),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height:  AppLayout.getHeight(24),
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            print(
                                "The width is ${constraints.constrainWidth()}");
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width:  AppLayout.getWidth(1),
                                          height:  AppLayout.getHeight(1),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )));
                          }),
                        ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.airplanemode_active_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    )),
                    PlaneContainer(),
                    Expanded(child: Container()),
                    Text(ticket['to']['code'],
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.white)),
                  ]),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                        style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ),
                    Text(ticket['flying_time'], style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['from']['name'],
                        textAlign: TextAlign.right,
                        style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ),
                  ],)
                ],
              ),
            ),
            //lower part of the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        )
                      ),
                    ) ,
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: LayoutBuilder(
                      builder: (BuildContext context,
                          BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children:
                          List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: AppLayout.getWidth(5),
                            height: AppLayout.getHeight(1),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          )),
                      );
                      },
                    ),
                  ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                          )
                      ),
                    ) ,
                  ),

                ],
              ),
            ),
            //lower part of the orange ticket
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21))),),
              padding: EdgeInsets.only(left: AppLayout.getHeight(16),
              top:AppLayout.getHeight(16) ,
              right: AppLayout.getHeight(16),
              bottom: AppLayout.getHeight(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                            style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          Gap(AppLayout.getHeight(5)),
                          Text('Date',
                            style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                            style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text('Departure Time',
                            style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                            style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text('Seat\nNumber',
                            style: Styles.headlineStyle4.copyWith(color: Colors.white),
                          textAlign: TextAlign.end,),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
