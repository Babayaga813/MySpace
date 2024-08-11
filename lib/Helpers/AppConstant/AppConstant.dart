import 'package:flutter/material.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

class AppConstant {
  static ScrollController scrollController = ScrollController();
  static ListObserverController observerScollController =
      ListObserverController(controller: AppConstant.scrollController);
}
