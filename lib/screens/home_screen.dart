import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trando/utils/constants.dart';
import '../utils/constants.dart';
import '../components/bottom_nav_bar.dart';
import '../components/custom_elevated_button.dart';
import '../components/daily_goals_card.dart';
import '../components/my_goal_card.dart';
import '../components/next_meal_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(child: Image.asset("assets/images/profile-photo.png"),),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Hello, Jane"),
                              SvgPicture.asset(
                                'assets/icons/waving-hand.svg', // Replace with your SVG file path
                                height: 20.0,
                                width: 20.0,
                              ),
                            ],
                          ),
                          Text("Welcome Back", style: KTextHeaderStyle,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/chat-dots.svg', // replace with your SVG file path
                          height: 24.0, // adjust the height as needed
                          width: 24.0, // adjust the width as needed
                          color: Colors.black, // set the color
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/notification.svg', // replace with your SVG file path
                          height: 24.0, // adjust the height as needed
                          width: 24.0, // adjust the width as needed
                          color: Colors.black, // set the color
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(child: Image.asset("assets/images/circular-avatar-1.png"), radius: 35, backgroundColor: kPrimaryColor,),
                        ),
                        Text("Coach Story", style: KTextSubSubHeaderStyle),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(child: Image.asset("assets/images/circular-avatar-2.png"), radius: 35, backgroundColor: Colors.white,),
                        ),
                        Text("Result", style: KTextSubSubHeaderStyle,),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(onPressed: () {  }, label: 'Notes', iconPath: 'assets/icons/create.svg',),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(onPressed: () {  }, label: 'Reminders', iconPath: 'assets/icons/clock.svg'),
                    )),
                  ],
                ),
                MyGoalCard(),
                DailyGoalsCard(),
                const NextMealCard(header: 'Next Meal', imagePath: 'assets/images/meal-1.png',),
                NextMealCard(header: 'Retail Order',imagePath: 'assets/images/meal-2.png',),
              ],
            ),
          ),
        ),
      )
    );
  }
}


