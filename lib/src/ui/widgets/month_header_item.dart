import 'package:flutter/material.dart';

import '../../core/time_line/month.dart';
import '../styles/app_colors.dart';
import '../styles/styles.dart';

class MonthHeaderItem extends StatefulWidget {
  Month month;
  int contrastingIndex;

  MonthHeaderItem(this.month, this.contrastingIndex);

  @override
  _MonthHeaderItemState createState() => _MonthHeaderItemState();
}

class _MonthHeaderItemState extends State<MonthHeaderItem> {
  @override
  Widget build(BuildContext context) {
    double width =
        widget.contrastingIndex == widget.month.id - 1 ? 200.0 : 50.0;
    String monthName = widget.contrastingIndex == widget.month.id - 1
        ? widget.month.monthName
        : widget.month.monthName[0] +
            widget.month.monthName[1] +
            widget.month.monthName[2];

    return Container(
      height: 100,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: widget.contrastingIndex == widget.month.id - 1
            ? AppColors.white
            : Colors.transparent,
      ),
      child: Center(
        child: Text(
          monthName.toUpperCase(),
          style: AppStyles.monthHeaderSelectorTitle,
        ),
      ),
    );
  }
}
