import './day.dart';

import 'package:dart_date/dart_date.dart';

class Month {
  final String monthName;
  final int id;
  final List<Day> days;

  const Month({
    this.monthName = '',
    this.id = 0,
    this.days = const [],
  });

  static List<Day> buildMonth(int month, int year) {
    return List.generate(
      DateTime(year, month).endOfMonth.day,
      (index) => Day(
        DateTime(year, month),
        id: index + 1,
      ),
    );
  }

  static String getMonthName(int id) {
    if (id == DateTime.january) {
      return 'janeiro';
    }
    if (id == DateTime.february) {
      return 'fevereiro';
    }
    if (id == DateTime.march) {
      return 'março';
    }
    if (id == DateTime.april) {
      return 'abril';
    }
    if (id == DateTime.may) {
      return 'maio';
    }
    if (id == DateTime.june) {
      return 'junho';
    }
    if (id == DateTime.july) {
      return 'julho';
    }
    if (id == DateTime.august) {
      return 'agosto';
    }
    if (id == DateTime.september) {
      return 'setembro';
    }
    if (id == DateTime.october) {
      return 'outubro';
    }
    if (id == DateTime.november) {
      return 'novembro';
    }

    if (id == DateTime.december) {
      return 'dezembro';
    }

    return '';
  }

  static Month listOfDaysToMonth(List<Day> days, int id) {
    return Month(
      days: days,
      id: id,
      monthName: getMonthName(id),
    );
  }
}
