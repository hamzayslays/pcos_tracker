import 'package:flutter/material.dart';

import '../data/Explore_model.dart';

class ExploreViewModel extends ChangeNotifier {
  // Sample data
  List<Item> items = [
    Item(title: "Item 1", imageUrl: "https://via.placeholder.com/150"),
    Item(title: "Item 2", imageUrl: "https://via.placeholder.com/150"),
    Item(title: "Item 3", imageUrl: "https://via.placeholder.com/150"),
  ];

  // Agar future me data update karna ho
  void addItem(Item item) {
    items.add(item);
    notifyListeners();
  }
}
