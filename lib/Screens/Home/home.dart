import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';
import 'package:food_delivery_app/Models/restaurant.dart';
import 'package:food_delivery_app/Screens/Home/widgets/food_list.dart';
import 'package:food_delivery_app/Screens/Home/widgets/restaurant_info.dart';
import 'package:food_delivery_app/Widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/food_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            leftIcon: Icons.arrow_back_ios_outlined,
            rightIcon: Icons.search_off_outlined,
          ),
          RestaurantInfo(),
          FoodList(
              selected: selected,
              callback: (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              },
              restaurant: restaurant),
          Expanded(
              child: FoodListView(
                  selected: selected,
                  callback: (int index) {
                    setState(() {
                      selected = index;
                    });
                  },
                  pageController: pageController,
                  restaurant: restaurant)),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                      width: 8,
                      height: 8,
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8)),
                  activeDotDecoration: DotDecoration(
                      width: 10,
                      height: 10,
                      color: kBackground,
                      borderRadius: BorderRadius.circular(10),
                      dotBorder: DotBorder(
                          color: kPrimaryColor, padding: 2, width: 2))),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 39,
        ),
      ),
    );
  }
}
