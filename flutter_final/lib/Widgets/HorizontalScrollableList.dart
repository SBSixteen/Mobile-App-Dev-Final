import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_final/Screens/ProductsPage.dart';
import 'package:flutter_final/constants.dart';

class HorizontalScrollableList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HorizontalScrollableListState();
}

class _HorizontalScrollableListState extends State<HorizontalScrollableList> {
  List<String> TabNames = ["Processing", "Shipped", "Returns", "Cancelled"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 12.0,
          );
        },
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (constants.selectedIndex != index) {
                setState(() {
                  constants.selectedIndex = index;
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return ProductsPage();
                  },));
                });

                super.setState(() {});
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                color: constants.selectedIndex == index
                    ? Colors.black
                    : const Color.fromARGB(16, 0, 0, 0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Center(
                  child: Text(
                    TabNames[index],
                    style: TextStyle(
                        fontSize: 16.0,
                        color:
                            constants.selectedIndex == index ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: TabNames.length);
  }
}
