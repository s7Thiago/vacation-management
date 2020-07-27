import 'package:flutter/widgets.dart';

import '../time_line/year.dart';
import '../time_line/month.dart';

class YearsProvider with ChangeNotifier {
  Map<int, List<Month>> _items = {
    DateTime.now().year: [...Year.buildYear(DateTime.now().year)],
    DateTime.now().year + 1: [...Year.buildYear(DateTime.now().year + 1)],
  };

  Map<int, List<Month>> get years => {..._items};
}
