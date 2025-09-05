import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ExampleThreeProvider with ChangeNotifier{
  
  List<int> _selectedItem = [];
  
  List<int> get selectedItem => _selectedItem;
  
  void setItem(int value){
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value){
    _selectedItem.remove(value);
    notifyListeners();
  }

}

