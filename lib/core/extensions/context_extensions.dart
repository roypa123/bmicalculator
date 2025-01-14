import 'package:flutter/widgets.dart';

extension Context on BuildContext {
  void dismissKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (currentFocus.hasFocus) {
      currentFocus.unfocus();
    }
  }
}
