import 'package:flutter/material.dart';
import 'package:starbucks_mobile_app_ui/models/order_model.dart';

class BasketProvider extends ChangeNotifier {
  List<Order> orders = [];

  void addOrder(Order order) {
    orders.add(order);
    notifyListeners();
  }
}
