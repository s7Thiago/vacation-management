import 'package:flutter/widgets.dart';

class AppPageIndexProvider with ChangeNotifier {
  Map<String, int> _pagesIndexes = {};

  Map<String, int> get pagesMap => {..._pagesIndexes};

  int getIndex(String pageIndexKey) {
    int result = -1;
    if (!_pagesIndexes.containsKey(pageIndexKey)) return result;

    _pagesIndexes.forEach((key, value) {
      if (key == pageIndexKey) result = value;
    });

    return result;
  }

  void insertPageIndexer(String pageIndexKey) {
    _pagesIndexes.putIfAbsent(pageIndexKey, () => 0);
  }

  void removePageIndexer(String pageIndexKey) {
    if (!(_pagesIndexes.length > 0)) return;

    if (!_pagesIndexes.containsKey(pageIndexKey)) return;

    _pagesIndexes.removeWhere((key, value) {
      return key == pageIndexKey;
    });

    notifyListeners();
  }

  void incrementPageIndex(String pageIndexKey, {int maxValue = 0}) {
    if (!(_pagesIndexes.length > 0)) return;

    if (!_pagesIndexes.containsKey(pageIndexKey)) return;

    _pagesIndexes.update(
        pageIndexKey,
        (value) =>
            (maxValue < 1 ? value++ : (maxValue > value ? value++ : value)));
    notifyListeners();
  }

  void decrementPageIndex(String pageIndexKey) {
    if (!(_pagesIndexes.length > 0)) return;

    if (!_pagesIndexes.containsKey(pageIndexKey)) return;

    _pagesIndexes.update(
        pageIndexKey, (value) => (value > 0 ? value-- : value));
    notifyListeners();
  }

  void updatePageIndex(String pageIndexKey, int newValue) {
    if (!(_pagesIndexes.length > 0)) return;

    if (!_pagesIndexes.containsKey(pageIndexKey)) return;

    _pagesIndexes.update(pageIndexKey, (value) => value = newValue);
    notifyListeners();
    // print('PAGE UPDATED => {$pageIndexKey, ${_pagesIndexes['$pageIndexKey']}}');
  }
}
