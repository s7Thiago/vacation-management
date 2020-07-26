import 'package:flutter/material.dart';

import './vacations.dart';
import '../consts/day_colors.dart';

class Day {
  final int id;
  final EmployeeVacation vacation;
  bool isHoliday;
  bool isSelected;
  final DateTime dateTime;

  Day(
    this.dateTime, {
    this.id = 0,
    this.isSelected = false,
    this.isHoliday = false,
    this.vacation = EmployeeVacation.NORMAL,
  });

  void switchSelected() {
    this.isSelected = !isSelected;
  }

  void switchIsHoliday() {
    this.isHoliday = !isHoliday;
  }

  String get weekDay {
    int weekDay = DateTime(dateTime.year, dateTime.month, this.id).weekday;

    switch (weekDay) {
      case 1:
        return 'Segunda';
        break;
      case 2:
        return 'Terça';
        break;
      case 3:
        return 'Quarta';
        break;
      case 4:
        return 'Quinta';
        break;
      case 5:
        return 'Sexta';
        break;
      case 6:
        return 'Sábado';
        break;
      case 7:
        return 'Domingo';
        break;
      default:
    }

    return '';
  }

  Color get color {
    if (vacation == EmployeeVacation.LICENCA_SAUDE) {
      return DayColors.LICENCA_SAUDE;
    } else if (vacation == EmployeeVacation.FERIAS) {
      return DayColors.FERIAS;
    } else if (vacation == EmployeeVacation.ABONO) {
      return DayColors.ABONO;
    } else if (vacation == EmployeeVacation.BANCO_DE_HORAS) {
      return DayColors.BANCO_DE_HORAS;
    } else if (vacation == EmployeeVacation.CURSO) {
      return DayColors.CURSO;
    } else if (vacation == EmployeeVacation.NORMAL) {
      if (weekDay == 'Sábado' || weekDay == 'Domingo') {
        return DayColors.SELECTED;
      }
      return DayColors.NORMAL;
    }

    return DayColors.NORMAL;
  }

  @override
  String toString() {
    return '{ day: $id, weekDay: $weekDay, color: $color, selected: $isSelected, holiday: $isHoliday, vacation: $vacation }\n';
  }
}
