import 'package:flutter/cupertino.dart';

class Currency with ChangeNotifier {
  

  String selectedItem = "USD";

  void selectItem(var val) {
    selectedItem = val;
    notifyListeners();
  }

  
}
