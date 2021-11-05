import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:onboarding_screen/Utils.dart';
import 'package:onboarding_screen/categores.dart';

class categoryListPage extends StatelessWidget {
  List<Category> categores = Utils.getMockedcategores();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      // appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Choose Frome Categories',
                style: TextStyle(color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: categores.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(categores[index].imgPath),
                          fit: BoxFit.cover,
                        ),
                      )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent
                                  ])),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.food_bank_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                categores[index].name,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 25,
                                ),
                              )
                            ],
                          ))
                      //Image.asset(categores[index].imgPath),
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
