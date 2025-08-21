import 'package:flutter/material.dart';

class WeightModel {
  final int weight;

  WeightModel(this.weight);
}

class WeightViewModel extends ChangeNotifier {
  WeightModel _selectedWeight = WeightModel(60);

  WeightModel get selectedWeight => _selectedWeight;

  void updateWeight(int newWeight) {
    _selectedWeight = WeightModel(newWeight);
    notifyListeners();
  }
}
