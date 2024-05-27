import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_final/Models/Orders.dart';

class OrderCard extends StatefulWidget {
  Orders order;

  OrderCard(this.order, {super.key});

  @override
  State<StatefulWidget> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: Image.network(
                        widget.order.URL,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.order.ProductName,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      widget.order.ProductDesc,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    Text(
                      "Rp. ${widget.order.Price}",
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 174, 246, 91),
                          borderRadius: BorderRadius.circular(16.0),),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Finished", style: TextStyle(fontWeight: FontWeight.w600, color: Color.fromARGB(255, 26, 176, 31)),),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID Order"),
                      Text("Total Items"),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.order.OrderID, style: const TextStyle(fontWeight: FontWeight.w600),),
                      Text("${widget.order.ItemCount}", style: const TextStyle(fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.message,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        border: Border.all(width: 1, color: Colors.grey),
                        color: Colors.transparent),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Text(
                          "View Reviews",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0),
                        ),
                      ),
                    )),
                const Spacer(),
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        border: Border.all(width: 1, color: Colors.grey),
                        color: Colors.orange),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Text(
                          "Buy Again",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
