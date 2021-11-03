import 'package:flutter/material.dart';

class RecipeModel {
  String title, writer, description;
  int cookingTime;
  int servings;
  List<String> ingredients = [];
  List<String> preperation = [];
  String imgPath;
  RecipeModel({
    required this.title,
    required this.writer,
    required this.description,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
    required this.preperation,
  });
  static List<RecipeModel> demoRecipe = [
    RecipeModel(
      title: 'Green Salad',
      writer: "BreakFast",
      description:
          'A touch of lemon juice, fresh lettuce, and a few greens make for a great taste and healthy meal, without much effort!',
      cookingTime: 10,
      servings: 90,
      preperation: [
        'After preparing the vegetable salad ingredients follow these steps Mix the cucumber, tomato, onion, pepper, radish, jicama, and lettuce together in a large bowlWhisk garlic, lemon juice, olive oil, pomegranate juice, salt, pepper, dill, basil, and water together in a small bowl.Add the ingredients for the small bowl (sauce) over the salad just before serving.'
      ],
      imgPath: 'lib/resources/img1.png',
      ingredients: [
        '1 chopped cucumber',
        '2 fresh chopped tomatoes.',
        '2 chopped green onions.',
        '1 chopped red pepper.',
        '5 chopped radishes.',
        '1 small guyama, peeled.',
        '5 lettuce leaves, cut into small pieces.',
        '1 clove minced garlic.',
        '1 and 1/2 tablespoon lemon juice.',
        '2 tablespoons olive oil.',
        '1 tablespoon of pomegranate juice.',
        '1 teaspoon of salt.',
        '1 teaspoon of ground black pepper.',
        '1 teaspoon chopped fresh dill.',
        '1 teaspoon finely chopped fresh basil.',
        '1 and 1/2 teaspoon water.',
      ],
    ),
    RecipeModel(
      title: 'Avocado sandwich with eggs',
      writer: "Break Fast",
      description: '',
      cookingTime: 20,
      servings: 170,
      imgPath: 'lib/resources/img2.png',
      preperation: [
        '1. Cut the baguette horizontally into two equal parts and grease the bottom with cream cheese.',
        '2. Peel the avocado, cut it into slices and place it on top of the cream cheese.',
        '3. Cut the boiled eggs into circles and place them on top of the avocado slices.',
        '4. Sprinkle a little salt, black pepper and paprika on top of the ingredients.',
        '5. Cover the ingredients with the top layer of bread and serve directly on your meal.',
      ],
      ingredients: [
        'Baguette bread: 2 pieces (brown / small)',
        'Cream cheese: 2 tablespoons (lite)',
        'Avocado: 1 piece',
        'Salt: a pinch',
        'Paprika: a sprinkle',
        'Black pepper: a pinch',
        'Green onions: 2 tablespoons (chopped)',
        'Eggs: 2 tablets (boiled)',
      ],
    ),
    RecipeModel(
      title: 'Banana, oat and peanut butter smoothie ',
      writer: "BreakFast",
      description:
          'A hearty breakfast that easily feeds a family of four, all on one sheet pan? Yes, please.',
      cookingTime: 15,
      servings: 350,
      imgPath: 'lib/resources/img3.png',
      preperation: [
        'This drink is great for breakfast or before a workout Mix all ingredients in a blender',
      ],
      ingredients: [
        'big banana',
        '2 tablespoons instant oats',
        'Half a cup of milk',
        'Small spoonful of peanut butter',
        'sprinkle cinnamon',
        'Diet sugar or honey for sweetening',
      ],
    ),
    RecipeModel(
      title: 'Blueberries with almonds and oats',
      writer: "BreakFast",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      cookingTime: 20,
      servings: 270,
      imgPath: 'lib/resources/img4.png',
      preperation: [
        'In a dish, put the blueberry, then add water to it so that it disintegrates and the snow melts, then set aside.',
        'Bring another plate and put the oats and milk or water and then put it in the microwave for about two minutes',
        'Then take out and stir the mixture with a spoon and enter it again for 30 seconds.',
        'Add honey and blueberry filtered from water, heart and feet in here. 😋😋',
      ],
      ingredients: [
        '3-4 tablespoons oats (white oats)',
        'A little frozen blueberry',
        'A sprinkle of honey, as desired',
        '0.5 cup milk or water',
      ],
    ),
    RecipeModel(
      title: 'Pancack',
      writer: "BreackFast",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      cookingTime: 40,
      servings: 160,
      imgPath: 'lib/resources/img5.png',
      preperation: [
        'In a medium bowl, place the yogurt, water, eggs, pumpkin, oil, and vanilla together. In another medium bowl, place the flour, brown sugar, sucralose, baking yeast, cinnamon, and salt together. Slowly add the wet ingredients to the dry ingredients and whisk until well combined. Heat a non-stick skillet over medium heat, and coat the pan with a little cooking oil spray. Pour ¼ cup of the mixture into the skillet. Cook the pancakes for about 2 minutes, or until bubbles appear on the top surface and the edges are slightly browned. Turn the pancakes over with a spatula, and cook for another 2 to 3 minutes. Repeat this process until you have used all of the pancake batter.',
      ],
      ingredients: [
        'A cup of plain',
        ' fat-free Greek yogurt',
        '. Cup water. ',
        '3 eggs.',
        ' 3/4 cup of mashed pumpkin.',
        ' Two tablespoons of canola oil.',
        ' Two teaspoons of vanilla extract.',
        ' Two cups of whole wheat flour.',
        ' 1/3 cup of brown sugar.',
        ' Two tablespoons of sucralose (Splenda).',
        ' Two tablespoons of baking yeast.',
        ' 1/2 teaspoon of cinnamon. 1/2 teaspoon of salt.',
      ],
    ),
  ];
}
