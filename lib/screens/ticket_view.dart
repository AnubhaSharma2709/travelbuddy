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
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //upper part of the ticket
            Container(
              decoration: BoxDecoration(
                color: Styles.blueColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
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
                          height: 24,
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
                                          width: 1,
                                          height: 1,
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
                  Gap(4),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: 100,
                        child: Text(ticket['from']['name'],
                        style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ),
                    Text(ticket['flying_time'], style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    SizedBox(
                      width: 100,
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
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ) ,
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context,
                          BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children:
                          List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5,
                            height: 1,
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
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
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
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),),
              padding: EdgeInsets.only(left: 16,
              top: 10,
              right: 16,
              bottom: 10,
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
                          Gap(5),
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
                          Text(ticket['number'],
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
