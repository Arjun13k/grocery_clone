import 'package:flutter/material.dart';
import 'package:ui_task/model/home_screen/model_bestSeller.dart';

class StackList extends StatelessWidget {
  const StackList({super.key, required this.modeBestSeller});
  final BestSeller modeBestSeller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
          height: 250,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.network(
                modeBestSeller.imgae,
                scale: 2,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: List.generate(
                  modeBestSeller.count,
                  (index) => Icon(
                    Icons.star,
                    size: 10,
                    color: Colors.amber,
                  ),
                ),
              ),
              Text(
                modeBestSeller.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Row(
                children: [
                  Text(modeBestSeller.rate,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(modeBestSeller.discountRate,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          decoration: TextDecoration.lineThrough)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(modeBestSeller.offRate,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.green)),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.green,
                ))),
        // Positioned(
        //     bottom: 2,
        //     child: Container(
        //       padding: EdgeInsets.all(1),
        //       decoration: BoxDecoration(
        //         color: Colors.green,
        //       ),
        //       child: Icon(
        //         Icons.shopping_cart,
        //         size: 30,
        //         color: Colors.white,
        //       ),
        //     ))
      ],
    );
  }
}
