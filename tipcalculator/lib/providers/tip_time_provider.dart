import 'package:flutter/material.dart';

class TipTimeProvider with ChangeNotifier {
  // creación de radiobuttons
  var costController = TextEditingController();
  var tip = 0.0;
  bool isSelected = false;
  int selectedRadio = 0;
  var radioGroupValues = {
    0: 'Amazing 20%',
    1: 'Good 18%',
    2: 'Ok 15%',
  };

  void tipCalculation() {
    var cost = costController.text;
    if (cost != '') {
      var costDouble = double.parse(cost);
      switch (selectedRadio) {
        case 0:
          tip = costDouble * 0.2;
          break;
        case 1:
          tip = costDouble * 0.18;
          break;
        case 2:
          tip = costDouble * 0.15;
          break;
        default:
          tip = 0.0;
      }
      if (isSelected) {
        tip = tip.ceilToDouble();
      }
      notifyListeners();
    }
  }

  void setSelectedRadio(int radioValue) {
    selectedRadio = radioValue;
    notifyListeners();
  }

  void setIsSelected(bool switchValue) {
    isSelected = switchValue;
    notifyListeners();
  }
}
