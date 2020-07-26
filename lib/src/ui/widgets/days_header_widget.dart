import 'package:flutter/material.dart';

import '../../core/time_line/day.dart';
import '../../core/consts/day_colors.dart';

class DaysHeadierWidget extends StatelessWidget {
  final Day day;

  DaysHeadierWidget(this.day);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: day.color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${day.weekDay[0]}${day.weekDay[1]}${day.weekDay[2]}'),
            Text(day.id.toString()),
          ],
        ),
      ),
    );
  }
}
