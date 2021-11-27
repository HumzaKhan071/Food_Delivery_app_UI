import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';
import 'package:food_delivery_app/Models/food.dart';
import 'package:food_delivery_app/Screens/Detail/widgets/food_detail.dart';
import 'package:food_delivery_app/Screens/Detail/widgets/food_image.dart';
import 'package:food_delivery_app/Widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  const DetailPage({Key? key, required this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              leftIcon: Icons.arrow_back_ios_outlined,
              rightIcon: Icons.favorite_outline,
              leftCallBack: () => Navigator.of(context).pop(),
            ),
            FoodImage(
              food: food,
            ),
            FoodDetail(food: food),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          onPressed: () {},
          fillColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  food.quantity.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
