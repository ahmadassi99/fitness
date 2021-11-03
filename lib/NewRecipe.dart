import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/RecipeModel.dart';
import 'package:onboarding_screen/RecipeModel.dart';
import 'package:onboarding_screen/RecipeDetails.dart';

import 'RecipeModel.dart';

class NewRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: RecipeModel.demoRecipe.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipDetail(
                            recipeModel: RecipeModel.demoRecipe[index],
                          ),
                        ),
                      ),
                      child: RecipeCard(RecipeModel.demoRecipe[index]),
                    ));
              },
            ),
            Container(
              color: Colors.black,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final RecipeModel recipeModel;
  RecipeCard(
    @required this.recipeModel,
  );
  @override
  bool saved = false;
  bool loved = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                  image: AssetImage(recipeModel.imgPath),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 40,
              child: InkWell(
                onTap: () {
                  setState(() {
                    saved = !saved;
                  });
                },
                child: Icon(
                  saved
                      ? Icons.bookmark_add_outlined
                      : Icons.bookmark_add_outlined,
                  color: Colors.green,
                  size: 38,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipeModel.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        recipeModel.writer,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.timer),
                      SizedBox(
                        width: 4,
                      ),
                      Text(recipeModel.cookingTime.toString() + '\''),
                      InkWell(
                        onDoubleTap: () {
                          color:
                          Color(0xA32638);
                          setState(() {
                            loved = !loved;
                          });
                        },
                        child: Icon(
                          Icons.food_bank_outlined,
                          color: loved ? Colors.red : Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }

  void setState(Null Function() param0) {}
}
