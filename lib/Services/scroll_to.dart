import 'package:flutter/material.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

class ScrollTo {
  static scrollToWidget(ListObserverController controller, int index) {
    if (index == 1) {
      controller.animateTo(
          index: index,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut);
    }
  }
}
