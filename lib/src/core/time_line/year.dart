import './month.dart';

class Year {
  final List<Month> months;

  Year(this.months);

  static List<Month> buildYear(int year) {
    return List.generate(
      13,
      (id) => Month.listOfDaysToMonth(Month.buildMonth(id, year), id),
    )..removeAt(0);
  }
}
