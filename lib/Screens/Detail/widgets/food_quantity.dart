import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';
import 'package:food_delivery_app/Models/food.dart';

class FoodQuantity extends StatelessWidget {
  final Food food;

  const FoodQuantity({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-0.3, 0),
            child: Container(
              width: 120,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "\$",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    food.price.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.3, 0),
            child: Container(
              height: 200,
              width: 120,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Text(food.quantity.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
