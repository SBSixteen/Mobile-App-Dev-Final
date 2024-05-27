
import 'package:flutter_final/Models/Orders.dart';
import 'package:flutter_final/Repositories/OrderRepo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'Order_Provider.g.dart';

@riverpod
Future<List<Orders>> getOrdersFromFirebase(GetOrdersFromFirebaseRef ref, String cat){
  print("here");
  return OrderService().getOrdersFromFirebase(cat);
}

class OrderService{

  OrderService._internal();

  static final OrderService _instance = OrderService._internal();

  factory OrderService(){
    return _instance;
  }

  final OrderRepo _orderRepo = OrderRepo();

  Future<List<Orders>> getOrdersFromFirebase(String cat) async {
    print("here");
    return await _orderRepo.getOrdersFromFirebase(cat);
  }
}