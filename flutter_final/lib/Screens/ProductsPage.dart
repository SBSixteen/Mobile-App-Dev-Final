import 'package:flutter/material.dart';
import 'package:flutter_final/Widgets/HorizontalScrollableList.dart';
import 'package:flutter_final/Widgets/VerticalProductsList.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductsPage extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      body: SafeArea(child: 
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 24.0,bottom: 10.0),
              child: SearchBar(
                hintText: "Search Shoes...",
                elevation: null,
            
                leading: Padding(
                  padding: EdgeInsets.only(left:8.0),
                  child: Icon(Icons.search_sharp, color: Colors.grey,),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: HorizontalScrollableList()),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: VerticalProductList())
          ],
        )
      ),
    );

  }
  
}