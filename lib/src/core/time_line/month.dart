import './day.dart';

class Month {
  final String monthName;
  final int id;
  final List<Day> days;

  const Month({
    this.monthName = '',
    this.id = 0,
    this.days = const [],
  });
}
