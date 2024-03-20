import 'package:flutter/material.dart';
import 'package:ui_task/core/constant/image/image_constant.dart';

class CheckoutList extends StatelessWidget {
  const CheckoutList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Stack(alignment: Alignment.topRight, children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      Image.network(
                          "https://m.media-amazon.com/images/I/61qpeaHEW5L._SL1000_.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kannan Devan"),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("\$ 12"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("\5",
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.3),
                                    fontSize: 15,
                                    decoration: TextDecoration.lineThrough,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("5% off",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.green))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.green),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(Icons.remove,
                                    size: 15, color: Colors.green),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.green),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(Icons.add,
                                    size: 15, color: Colors.green),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 5,
                  right: 5,
                  child: CircleAvatar(
                    radius: 18,
                    child: Icon(
                      Icons.delete_rounded,
                      color: Colors.green,
                    ),
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}
