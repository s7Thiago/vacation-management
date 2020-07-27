import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../styles/app_colors.dart';
import '../../core/providers/page_provider.dart';

class HeaderSelectorTabs extends StatelessWidget {
  final String pageIndexerKey;
  final Map<int, Widget> options;

  HeaderSelectorTabs({
    @required this.pageIndexerKey,
    @required this.options,
  });

  @override
  Widget build(BuildContext context) {
    final pageIndexProvider =
        Provider.of<AppPageIndexProvider>(context, listen: true);

    //Adding a entry to track the page current index through of the provider
    pageIndexProvider.insertPageIndexer(pageIndexerKey);

    int _currentIndex = pageIndexProvider.getIndex(pageIndexerKey);

    return CupertinoSegmentedControl<int>(
      borderColor: Colors.transparent,
      selectedColor: Colors.transparent,
      unselectedColor: Colors.transparent,
      groupValue: _currentIndex,
      padding: const EdgeInsets.only(right: 50, left: 100),
      pressedColor: Colors.transparent,
      children: options,
      onValueChanged: (value) =>
          pageIndexProvider.updatePageIndex(pageIndexerKey, value),
    );
  }
}
