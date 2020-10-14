import 'package:flutter/material.dart';
import 'package:food_ordering/widgets/Categories.dart';
import 'package:food_ordering/widgets/titles.dart';
import 'package:food_ordering/widgets/semi_titles.dart';
import '../colorScheme.dart';



class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: ListView(

            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.fromLTRB(0, 8, 7.5, 0),
                    icon: Icon(Icons.notifications, color: primary,),
                    color: grey, onPressed: () {  },
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 7.5, 0),
                    child: CustomTitle(text: "בחר ארוחה להזמנה",
                      // textAlign: TextAlign.end,
                      // textDirection: TextDirection.rtl,
                    ),
                  ),
                ]
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: primaryBright,
                      offset: Offset(2, 0),
                      spreadRadius: 2
                    ),
                  ]
                ),
                child: ListTile(
                  trailing: Icon(Icons.search_sharp, color: primary,),
                  title: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: "חפש מסעדות או מנות להזמנה",
                      border: InputBorder.none,
                    ),
                  ),
                  leading: Icon(Icons.filter_list_sharp, color: primary,),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              
              Categories(),
              
              SizedBox(height: 10,),
              
              Container(
                child: Center(
                  child: CustomTitle(text: "מסעדות",),
                )
              ),

              Restaurants(),
              ),
            ],
          )
        ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text("Home"),
              backgroundColor: primary
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              title: Text("History"),
              backgroundColor: primary
          ),
        ],

        onTap: (index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
