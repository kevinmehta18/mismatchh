import 'dart:collection';

import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  bool isLoading = false;
  int currentIndex = 0;
  ListQueue<int> navigationQueue = ListQueue();


  startLoader() {
    isLoading = true;
    notifyListeners();
  }

  stopLoader() {
    isLoading = false;
    notifyListeners();
  }


  void onTapped(int index) {
    if (index == 0) {
      navigationQueue.clear();
    }
    currentIndex = index;
    navigationQueue.add(index);
    notifyListeners();
  }
}