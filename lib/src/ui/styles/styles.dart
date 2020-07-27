import 'package:flutter/material.dart';
import './app_colors.dart';

class AppStyles {
  // Texts
  static const TextStyle daysHeaderDayStyle = TextStyle(
    color: AppColors.green3,
    fontWeight: FontWeight.w800,
    fontSize: 12,
  );

  static final TextStyle daysHeaderWeekDayStyle = daysHeaderDayStyle.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final TextStyle monthHeaderSelectorTitle = daysHeaderDayStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w900,
  );
}
