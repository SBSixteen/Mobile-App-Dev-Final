import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_final/Providers/Order_Provider.dart';
import 'package:flutter_final/Widgets/OrderCard.dart';
import 'package:flutter_final/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerticalProductList extends ConsumerWidget{

  @override
  createState() {
    return super.createState();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final orders = ref.watch(getOrdersFromFirebaseProvider(constants.tabNames[constants.selectedIndex]));

    return orders.when(data: (data) {
      if(data.isEmpty){
        return const Text("No Products.");
      }else{
        return ListView.separated(
          separatorBuilder: (context, index) {
            return const Padding(padding: EdgeInsets.all(16.0),
            child: Text("-------------------------------------------"),);
          },
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return OrderCard(data[index]);
          },
        );
      }

    }
    , error: (error, stackTrace) {
      print(stackTrace);
      return const Text("Trouble Connecting to Firebase");
    }, loading: () {
      return Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: const CircularProgressIndicator(color:Colors.red,),
        ),
      );
    },);

  }
  
}