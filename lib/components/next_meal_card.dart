import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

class NextMealCard extends StatefulWidget {
  final String header;
  final String imagePath; // Add imagePath parameter

  const NextMealCard({
    Key? key,
    required this.header,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<NextMealCard> createState() => _NextMealCardState();
}

class _NextMealCardState extends State<NextMealCard> {
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
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  widget.header,
                  style: KTextHeaderStyle,
                ),
              ),
              Container(
                child: Image.asset(widget.imagePath), // Load image dynamically
              ),
              if (widget.header == "Next Meal") ...[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
                  child: Text(
                    "Green Beans, Tomatoes, Eggs",
                    style: KTextSubHeaderStyle,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/calories.svg',
                          height: 18.0,
                          width: 18.0,
                          color: kPrimaryColor,
                        ),
                        VerticalDivider(width: 2.0, color: Colors.black, thickness: 2,),
                        Text("135 kcal", style: KGoalTextStyle),
                      ],
                    ),
                    VerticalDivider(width: 6.0, color: Colors.black, thickness: 2,),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/clock-remaining.svg',
                          height: 18.0,
                          width: 18.0,
                          color: kPrimaryColor,
                        ),
                        VerticalDivider(width: 2.0, color: Colors.black, thickness: 2,),
                        Text("30 min", style: KGoalTextStyle),
                      ],
                    ),
                  ],
                ),
              ] else if (widget.header == "Retail Order") ...[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                  child: Text(
                    "SnackMate",
                    style: KTextSubHeaderStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                  child: Text(
                    "Order ID #1234-1234-1234",
                    style: KGoalTextStyle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Ordered on:', style: KTextSubSubHeaderStyle),
                        Text(' 01-01-2024', style: KGoalTextStyle),
                      ],
                    ),
                    Text('Delivery within 3-5 days', style: KGoalTextStyle),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
