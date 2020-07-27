import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './days_header_item.dart';
import '../../core/time_line/year.dart';
import '../../core/time_line/month.dart';
import '../../core/providers/years.dart';

class DaysHeader extends StatelessWidget {
  const DaysHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ...List.from(Provider.of<YearsProvider>(context)
            .years[2020][0]
            .days
            .map((e) => DaysHeaderItem(e))),
      ],
    );
  }
}
