import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/utilis/app_layout.dart';
import 'package:travelbuddy/utilis/utilis.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel Price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(15),
          vertical: AppLayout.getHeight(17),
        ),
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(17),
          top: AppLayout.getHeight(5),
        ),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 2,
              spreadRadius: 1,
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage(
                      "lib/images/${hotel['image']}"
                    ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            Text(hotel['place'],
                style: Styles.headlineStyle2.copyWith(color: Colors.white)
    ),
    Gap(AppLayout.getHeight(5)),
            Text(hotel['destination'],
            style: Styles.headlineStyle3.copyWith(color: Colors.white),),
            Gap(AppLayout.getHeight(16)),
            Text('\$${hotel['price']}/night',
              style: Styles.headlineStyle.copyWith(color: Colors.white),),
          ],
        ),
    );
  }
}
