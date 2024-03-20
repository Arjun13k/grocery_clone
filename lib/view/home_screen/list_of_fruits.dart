import 'package:flutter/material.dart';
import 'package:ui_task/model/home_screen/model_category.dart';

class SmallItems extends StatelessWidget {
  const SmallItems({super.key, required this.modelCAtegoryLIst});
  final CategoryModel modelCAtegoryLIst;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.1),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.network(
                  modelCAtegoryLIst.categoryimage,
                  scale: 10,
                ),
                Text(modelCAtegoryLIst.text,
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }
}
