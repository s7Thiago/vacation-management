import 'package:dart_date/dart_date.dart';

import './day.dart';

class MonthBuilder {
  static List<Day> buildMonth(int month, int year) {
    return List.generate(
      DateTime(year, month).endOfMonth.day,
      (index) => Day(
        DateTime(year, month),
        id: index + 1,
      ),
    );
  }
}
