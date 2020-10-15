import 'package:flutter/material.dart';
import 'package:food_ordering/colorScheme.dart';
import 'file:///D:/uiTraining07102020/food_ordering/lib/Classes/Dish.dart';
import 'semi_titles.dart';


// If data base is used' change it to get names and images for it
List<Dish> restaurantsLst = [
  Dish(rName: 'הבורגר הראשון', picturePath:'burger2.jpg', type: "Burger"),
  Dish(rName: 'פיצה די-איטליה', picturePath:'pizza2.jpg', type: "Italian"),
  Dish(rName: 'סטייק-האוס', picturePath:'steak2.jpg', type: "Steakhouse"),
  Dish(rName: 'מאקי', picturePath:'sushi2.jpg', type: "Asian"),
  Dish(rName: 'הנודלייה', picturePath:'noodles2.jpg', type: "Asian"),
  Dish(rName: 'לחם המרכז', picturePath:'pastry2.jpg', type: "Bakery"),
  Dish(rName: 'פיצה פסטה', picturePath:'pasta2.jpg', type: "Italian"),
  Dish(rName: 'מיסטר בין', picturePath:'beer2.jpg', type: "Pub"),
];


class Dishes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
        child: ListView.builder(
          itemCount: restaurantsLst.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index){
            return Padding(
            padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Stack(
                    children: [
                      Image.asset("assets/images/${restaurantsLst[index].picturePath}"),
                      Center(
                          child: Text(
                            "${restaurantsLst[index].rName}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700
                            ),
                          )
                      )
                    ]
                )
              )
            );
        }
      )
    );
  }
}
