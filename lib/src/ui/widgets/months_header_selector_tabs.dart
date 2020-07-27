import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import '../styles/app_colors.dart';
import '../../core/providers/years.dart';
import '../../core/time_line/month.dart';
import '../widgets/month_header_item.dart';

class MonthsHeaderSelectorTabs extends StatefulWidget {
  @override
  _MonthsHeaderSelectorTabsState createState() =>
      _MonthsHeaderSelectorTabsState();
}

class _MonthsHeaderSelectorTabsState extends State<MonthsHeaderSelectorTabs> {
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     margin: const EdgeInsets.only(right: 30, left: 100),
  //     height: 80,
  //     color: AppColors.green5,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: [
  //         ...Provider.of<YearsProvider>(context)
  //             .years[2020]
  //             .map((month) => MonthHeaderItem(month))
  //             .toList(),
  //       ],
  //     ),
  //   );
  // }

  int _currentIndex = 0;
  int _counter = 0;

  @override
  build(context) {
    Map<int, MonthHeaderItem> _children = Map.fromIterable(
      Provider.of<YearsProvider>(context).years[2020],
      key: (element) {
        return (element as Month).id - 1;
      },
      value: (element) {
        return MonthHeaderItem(element as Month);
      },
    );
    return MaterialSegmentedControl(
      unselectedColor: AppColors.green2,
      selectedColor: AppColors.white,
      borderColor: Colors.transparent,
      selectionIndex: _currentIndex,
      horizontalPadding: const EdgeInsets.only(right: 10, left: 100),
      onSegmentChosen: (value) {
        setState(() {
          _currentIndex = value;
        });
        print('current index: $_currentIndex');
      },
      children: _children,
    );
  }
}
