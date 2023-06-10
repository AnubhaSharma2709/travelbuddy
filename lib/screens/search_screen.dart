import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelbuddy/utilis/app_layout.dart';
import 'package:travelbuddy/utilis/utilis.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\n you Looking for?', style: Styles.headlineStyle.copyWith(fontSize: 35)),

        ],
      ),
    );
  }
}
