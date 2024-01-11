import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';
import 'custom_elevated_button.dart'; // Import your custom button

class DailyGoalsCard extends StatefulWidget {
  const DailyGoalsCard({Key? key}) : super(key: key);

  @override
  State<DailyGoalsCard> createState() => _DailyGoalsCardState();
}

class _DailyGoalsCardState extends State<DailyGoalsCard> {
  List<bool> _values = [false, false, false];

  double _calculateProgress() {
    int checkedCount = _values.where((value) => value).length;
    double totalItems = _values.length.toDouble();
    return checkedCount / totalItems;
  }

  int _calculateCompletedTasks() {
    return _values.where((value) => value).length;
  }

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
              padding: const EdgeInsets.only(left:22.0, top: 16.0),
              child: Text("Daily Goals", style: KTextHeaderStyle,),
            ),
            Container(
              height: 180,
              child: ListView(
                children: [
                  CheckboxListTile(
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'GeeksforGeeks',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: _values[0],
                    onChanged: (bool? value) {
                      setState(() {
                        _values[0] = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Another Option',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: _values[1],
                    onChanged: (bool? value) {
                      setState(() {
                        _values[1] = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Third Option',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: _values[2],
                    onChanged: (bool? value) {
                      setState(() {
                        _values[2] = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: LinearProgressIndicator(
                        value: _calculateProgress(),
                        minHeight: 14.0,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(kProgressBarColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 16, bottom: 8.0),
                  child: Text(
                    '${_calculateCompletedTasks()}/${_values.length}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  onPressed: () {},
                  label: "Add Goal",
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
