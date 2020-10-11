import 'package:flutter/material.dart';
import 'package:food_ordering/colorScheme.dart';
import 'file:///D:/uiTraining07102020/food_ordering/lib/Classes/Restaurant.dart';
import 'semi_titles.dart';


// If data base is used' change it to get names and images for it
List<Restaurant> restaurantsLst = [
  Restaurant(rName: 'הבורגר הראשון', picturePath:'burger.png', type: "Burger"),
  Restaurant(rName: 'פיצה די-איטליה', picturePath:'pizza.png', type: "Italian"),
  Restaurant(rName: 'סטייק-האוס', picturePath:'steak.png', type: "Steakhouse"),
  Restaurant(rName: 'מאקי', picturePath:'sushi.png', type: "Asian"),
  Restaurant(rName: 'הנודלייה', picturePath:'noodles.png', type: "Asian"),
  Restaurant(rName: 'לחם המרכז', picturePath:'pastry.png', type: "Bakery"),
  Restaurant(rName: 'פיצה פסטה', picturePath:'pasta.png', type: "Italian"),
  Restaurant(rName: 'מיסטר בין', picturePath:'beer.png', type: "Pub"),
];


class Restaurants extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          itemCount: restaurantsLst.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index){
            return Column(

            );
          }
      ),
    );
  }
}