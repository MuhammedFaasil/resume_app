import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  Future<dynamic> push(Widget routeTo) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => routeTo));
  }

  Future<Object?> go(Widget routeTo) {
    return Navigator.pushAndRemoveUntil(this,
        MaterialPageRoute(builder: (context) => routeTo), (route) => false);
  }

  void pop() {
    return Navigator.pop(this);
  }
}
