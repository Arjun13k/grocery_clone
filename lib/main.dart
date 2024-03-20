import 'package:flutter/material.dart';
import 'package:ui_task/view/home_screen/home_screen.dart';

void main() {
  runApp(ProductUiTask());
}

class ProductUiTask extends StatelessWidget {
  const ProductUiTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
