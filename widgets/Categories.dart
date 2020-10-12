import 'package:flutter/material.dart';
import 'package:food_ordering/colorScheme.dart';
import 'package:food_ordering/Classes/category.dart';
import 'semi_titles.dart';


// If data base is used' change it to get names and images for it
List<Category> foodCategories = [
  Category(cName: 'בורגר', icon:'burger.png'),
  Category(cName: 'פיצה', icon:'pizza.png'),
  Category(cName: 'סטייק', icon:'steak.png'),
  Category(cName: 'סושי', icon:'sushi.png'),
  Category(cName: 'נודלס', icon:'noodles.png'),
  Category(cName: 'מאפים', icon:'pastry.png'),
  Category(cName: 'פסטה', icon:'pasta.png'),
  Category(cName: 'בירה', icon:'beer.png'),
];


class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView.builder(
            itemCount: foodCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index){ return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.5),
                  decoration: BoxDecoration(
                    color: white,
                    border: Border(
                      top: BorderSide(width: 1.0, color: primary),
                      left: BorderSide(width: 1.0, color: primary),
                      right: BorderSide(width: 1.0, color: primary),
                      bottom: BorderSide(width: 1.0, color: primary),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                  child: Image.asset('assets/images/${foodCategories[index].icon}', width: 50,),),
                SizedBox(
                  height: 5,
                ),
                CustomSemiTitle(
                  text: "${foodCategories[index].cName}",
                ),
              ],
            );
          }
        )
    );
  }
}
