import 'package:flutter/material.dart';
import 'package:food_delivery_app/Models/restaurant.dart';
import 'package:food_delivery_app/Screens/Detail/detail.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  const FoodListView(
      {Key? key,
      required this.selected,
      required this.callback,
      required this.pageController,
      required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: 
          category.map((e) => ListView.separated(
            padding: EdgeInsets.zero,
              itemBuilder: (context,index)=>GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailPage(food: restaurant.menu[category[selected]]![index])));
                },
                child: FoodItem(food: restaurant.menu[category[selected]]![index],)),
              separatorBuilder: (_,index)=>SizedBox(height: 15,),
              itemCount: restaurant.menu[category[selected]]!.length)).toList()
        ,
      ),
    );
  }
}
