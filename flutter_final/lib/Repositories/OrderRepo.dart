import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_final/Models/Orders.dart';

class OrderRepo{

  OrderRepo._internal();

  static final OrderRepo _instance = OrderRepo._internal();

  factory OrderRepo(){
    return _instance;
  }

  Future<List<Orders>> getOrdersFromFirebase(String cat) async{

    print("here");
    final query = await FirebaseFirestore.instance.collection("Products").where("Type", isEqualTo: cat).get();

    List<Orders> orders = query.docs.map((e) {
      var k = e.data();
      print(k);
      Orders o = Orders.fromJson(k);
      return o;
    },).cast<Orders>().toList();

    if(query.docs.isEmpty){
      return [];
    }
    return orders;
  }

}