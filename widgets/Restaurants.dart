import 'package:flutter/material.dart';
import 'package:food_ordering/colorScheme.dart';
import 'file:///D:/uiTraining07102020/food_ordering/lib/Classes/Restaurant.dart';
import 'semi_titles.dart';


// If data base is used' change it to get names and images for it
List<Restaurant> restaurantsLst = [
  Restaurant(rName: 'הבורגר הראשון', picturePath:'burger2.jpg', type: "Burger"),
  Restaurant(rName: 'פיצה די-איטליה', picturePath:'pizza2.jpg', type: "Italian"),
  Restaurant(rName: 'סטייק-האוס', picturePath:'steak2.jpg', type: "Steakhouse"),
  Restaurant(rName: 'מאקי', picturePath:'sushi2.jpg', type: "Asian"),
  Restaurant(rName: 'הנודלייה', picturePath:'noodles2.jpg', type: "Asian"),
  Restaurant(rName: 'לחם המרכז', picturePath:'pastry2.jpg', type: "Bakery"),
  Restaurant(rName: 'פיצה פסטה', picturePath:'pasta2.jpg', type: "Italian"),
  Restaurant(rName: 'מיסטר בין', picturePath:'beer2.jpg', type: "Pub"),
];


class Restaurants extends StatelessWidget{
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
