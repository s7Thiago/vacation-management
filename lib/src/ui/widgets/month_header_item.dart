import 'package:flutter/material.dart';

import '../../core/time_line/month.dart';
import '../styles/app_colors.dart';
import '../styles/styles.dart';

class MonthHeaderItem extends StatelessWidget {
  Month month;

  MonthHeaderItem(this.month);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      '${month.monthName[0].toUpperCase()}${month.monthName[1].toUpperCase()}${month.monthName[2].toUpperCase()}',
      style: AppStyles.monthHeaderSelectorTitle,
    ));
  }
}
