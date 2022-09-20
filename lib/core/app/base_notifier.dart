import 'package:flutter/material.dart';

import '../../enums/enum_state.dart';

class BaseChangeNotifier extends ChangeNotifier {
  StateEnum _loadingState = StateEnum.unknown;
  StateEnum get loadingState => _loadingState;

  void setLoading() {
    _loadingState = StateEnum.loading;
    notifyListeners();
  }

  // String _loadingType = '';
  // String get loadingType => _loadingType;
  // set loadingType(String value) {
  //   _loadingType = value;
  //   notifyListeners();
  // }
}
