import 'package:flutter/material.dart';
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
      height:size.height*0.2,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Styles.blueColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('NYC',
                      style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      PlaneContainer(),
                      Expanded(child: Container()),
                      PlaneContainer(),
                      Expanded(child: Container()),
                      Text('LND',
                        style: Styles.headlineStyle3.copyWith(color: Colors.white)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
