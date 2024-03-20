import 'package:flutter/material.dart';
import 'package:ui_task/model/product_screen/product_rating_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productmodel});
  final RatingModel productmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(alignment: Alignment.centerRight, children: [
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              productmodel.productImage,
                              scale: 1,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        productmodel.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(3)),
                            child: Row(
                              children: [
                                Text(
                                  productmodel.rate,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            productmodel.rating,
                            style:
                                TextStyle(color: Colors.black.withOpacity(.4)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(productmodel.price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(productmodel.discountprice,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(productmodel.off,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.green)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  right: 8,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.redo,
                      color: Colors.green,
                    ),
                  ))
            ]),
            SizedBox(
              height: 15,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: double.infinity,
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Text(
                            "Brand",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.4)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "red label",
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Type",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.4)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "red label",
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Quantity",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.4)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "red label",
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Shelf life",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.4)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "red label",
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "organic",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.4)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "red label",
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "flavor",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.4)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "red label",
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "More Details",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 8, 166, 13),
                  ),
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
