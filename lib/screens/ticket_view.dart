import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/Widgets/PlaneContainer.dart';

import '../utilis/app_layout.dart';
import '../utilis/utilis.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: size.height * 0.2,
      child: Container(
        margin: EdgeInsets.only(left: 16),
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
                      'NYC',
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
                    Text('LND',
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.white)),
                  ]),
                  Gap(4),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: 100,
                        child: Text('NewYork',
                        style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ),
                    Text("8H 30M", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    SizedBox(
                      width: 100,
                      child: Text('London',
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
