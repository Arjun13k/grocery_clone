import 'package:flutter/material.dart';
import 'package:ui_task/controller/home_screen/category_controller.dart';
import 'package:ui_task/controller/home_screen/controller_model.dart';
import 'package:ui_task/controller/product_screen/product_detais_controller.dart';
import 'package:ui_task/controller/product_screen/product_screen_controller.dart';
import 'package:ui_task/core/constant/image/image_constant.dart';
import 'package:ui_task/view/home_screen/list_of_fruits.dart';
import 'package:ui_task/view/home_screen/list_of_items.dart';
import 'package:ui_task/view/product_page/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.green,
        leading: Icon(
          Icons.sort,
          color: Colors.white,
        ),
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            filled: true,
            isDense: true,
            fillColor: Colors.black.withOpacity(.2),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 215, 96),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.network(
                          ImageConstant.imagevegitable,
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "Organic",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          Text("Vegetables", style: TextStyle(fontSize: 20))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text("View all",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => SmallItems(
                          modelCAtegoryLIst:
                              CategoryCOntroller.isCategory[index],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: CategoryCOntroller.isCategory.length),
              ),
              Row(
                children: [
                  Text("Best Seller",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text("View all",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 250,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetails(
                                  productmodel: ProductController
                                      .isRatingCOntroller[index],
                                  productdetails: productDetailsController
                                      .isProductDetails[index],
                                ),
                              )),
                          child: StackList(
                            modeBestSeller:
                                ControllerModel.isModelController[index],
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 5,
                        ),
                    itemCount: ControllerModel.isModelController.length),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Featured Deals",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text("View all",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
