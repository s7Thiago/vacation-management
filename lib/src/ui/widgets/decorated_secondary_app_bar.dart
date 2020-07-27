import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/header_selector_tabs.dart';
import '../widgets/month_header_item.dart';

import '../styles/app_colors.dart';

import '../../core/providers/page_provider.dart';
import '../../core/providers/years.dart';
import '../../core/time_line/month.dart';

class DecoratedSecondaryAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageIndexProvider = Provider.of<AppPageIndexProvider>(context);
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.green2,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: HeaderSelectorTabs(
          pageIndexerKey: 'monthsHeaderPageSelector',
          options: Map.fromIterable(
            Provider.of<YearsProvider>(context).years[2020],
            key: (element) {
              return (element as Month).id - 1;
            },
            value: (element) {
              return MonthHeaderItem(element as Month,
                  pageIndexProvider.getIndex('monthsHeaderPageSelector'));
            },
          ),
        ),
      ),
    );
  }
}
