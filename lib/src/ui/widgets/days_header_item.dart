import 'package:flutter/material.dart';

import '../../core/time_line/day.dart';
import '../styles/styles.dart';

class DaysHeaderItem extends StatelessWidget {
  final Day day;

  DaysHeaderItem(this.day);

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
            Text(
              '${day.weekDay[0]}${day.weekDay[1]}${day.weekDay[2]}',
              style: AppStyles.daysHeaderWeekDayStyle,
            ),
            Text(
              day.id.toString(),
              style: AppStyles.daysHeaderDayStyle,
            ),
          ],
        ),
      ),
    );
  }
}
