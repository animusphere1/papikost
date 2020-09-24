import 'package:flutter/cupertino.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  Axis _axisDirection = Axis.horizontal;
  Axis get axisdirectiononboard => _axisDirection;

  void indexdotsganti(int index) {
    _indexdots = index;
    print(indexdots);

    if (_indexdots <= 1) {
      _axisDirection = Axis.vertical;
    } else {
      _axisDirection = Axis.horizontal;
    }

    notifyListeners();
  }
}
