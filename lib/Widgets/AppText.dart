import 'package:flutter/material.dart';
import 'package:travelbuddy/utilis/utilis.dart';

class AppText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppText({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
Text(
bigText,
style: Styles.headlineStyle2,
),
InkWell(
onTap: () {
print("does not work");
},
child: Text(
smallText,
style:
Styles.textStyle.copyWith(color: Styles.primaryColor),
),
)
],
);
  }
}
