import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'custom_elevated_button.dart';

class MyGoalCard extends StatelessWidget {
  const MyGoalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:16.0, left: 22.0, bottom: 8.0, right: 22.0),
              child: Text("My Goal", style:KTextHeaderStyle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, bottom: 4.0, right:22.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor", style: KGoalTextStyle,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  onPressed: () {},
                  label: "New Goal",
                  borderRadius: 50.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
