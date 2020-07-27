import 'package:flutter/material.dart';

import '../widgets/days_header.dart';
import '../widgets/months_header_selector_tabs.dart';
import '../styles/app_colors.dart';

class VacationsManagerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.lightbulb), onPressed: () {}),
          Container(width: 20, color: AppColors.white),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.green2,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: MonthsHeaderSelectorTabs(),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  color: AppColors.green4,
                  width: MediaQuery.of(context).size.width * .8,
                  height: 50,
                  child: DaysHeader(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
