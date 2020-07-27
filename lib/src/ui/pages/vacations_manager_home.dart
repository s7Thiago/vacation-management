import 'package:flutter/material.dart';

import '../../ui/widgets/header_selector_tabs.dart';
import '../styles/app_colors.dart';
import '../widgets/days_header.dart';
import '../widgets/decorated_secondary_app_bar.dart';

class VacationsManagerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Container(
            color: AppColors.green3,
            width: 400,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: HeaderSelectorTabs(
                pageIndexerKey: 'yearsHeaderPageSelector',
                options: null,
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.lightbulb), onPressed: () {}),
          Container(width: 20, color: AppColors.white),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DecoratedSecondaryAppBar(),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 50),
                  color: AppColors.white,
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
