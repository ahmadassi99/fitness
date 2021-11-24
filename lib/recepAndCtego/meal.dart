import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/recepAndCtego/Home_REC.dart';
import 'package:onboarding_screen/recepAndCtego/new_recipe.dart';

import 'new_recipe.dart';
import 'new_recipe.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),

      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        // color: Colors.grey[300],
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.food_bank_sharp,
              color: Colors.green,
            ),
            /* Icon(
              Icons.people,
            ),
            Icon(
              Icons.orite,
            ),
            Icon(
              Icons.person,
            ),*/
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: DefaultTabController(
          length: 1,
          initialIndex: 0,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    text: "Categories".toUpperCase(),
                  ),
                ],
                labelColor: Colors.brown,
                /* indicator: dotIndicator(
                  color: Colors.black,
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),*/
                unselectedLabelColor: Colors.black.withOpacity(0.3),
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    //   NewRecipe(),
                    Container(
                      child: Center(
                        //
                        child: Homecate(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
