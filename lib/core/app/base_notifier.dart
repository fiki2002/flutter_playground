import 'package:flutter/material.dart';

import '../enum/origin.dart';

class BaseChangeNotifier extends ChangeNotifier {
  StateEnum _loadingState = StateEnum.unknown;
  StateEnum get loadingState => _loadingState;

  void setLoading(StateEnum val) {
    _loadingState = val;
    notifyListeners();
  }

  String _loadingType = '';
  String get loadingType => _loadingType;
  set loadingType(String value) {
    _loadingType = value;
    notifyListeners();
  }
}
