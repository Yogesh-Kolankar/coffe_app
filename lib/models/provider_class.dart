import 'package:coffe_app/models/coffeeItems.dart';
import 'package:flutter/material.dart';

class CoffeProvider extends ChangeNotifier {
  List<CoffeModel> shop = [
    CoffeModel(imgpath: "lib/images/coffe.jpg", name: "Coffe", price: "20"),
    CoffeModel(imgpath: "lib/images/coffe.jpg", name: "Coffe", price: "20"),
    CoffeModel(imgpath: "lib/images/coffe.jpg", name: "Coffe", price: "20"),
    CoffeModel(imgpath: "lib/images/coffe.jpg", name: "Coffe", price: "20")
  ];

   List<CoffeModel> cart = [];

  void add(CoffeModel coffe)
   {
    cart.add(coffe);
    notifyListeners();
  }

  void remove(CoffeModel coffe) 
  {
    cart.remove(coffe);
    notifyListeners();
  }
}
