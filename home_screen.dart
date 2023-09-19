import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> recipes = ["Fruit Salad", "Black Beans", "Chole"];
  final List<String> ingredients = ["milk, sugar, custard, cardamom,apple, banana, grapes, cherry, pineapple, or any additional fruits if you want","1 cup black beans, salt, water, turmeric powder","chick peas, one sliced onion, chole masala, one clove of garlic, 1 teaspoon of grated ginger, 4-5 green chili, one squeeze lemon , 2 table spoon of oil, cumin seeds, hint powder"];
  final List<String> directions = ["boil 2 cups of milk in big vessel for 16-20 minutes in medium heat, take out the 1/4 cup boiling milk in small bowl and let it cook down and add 1 tablespoon custard powder and sugar in it and boil for 10 minutes", "soak 1 cup black beans into 3 cups of water for 6-7 hours in big vessel. Now pour into instant pot  and add salt and turmeric power into it on beans setting . Wait until it’s done.", "soak 1 cup of chick peas into 3 cups of water for 6-7 hours. Pour this into instant pot and add one clove of garlic, salt and put it on beans setting . After that in small vessel add 2 tablespoons of oil and add cumin seeds into it . After the cumin seeds crack add hint powder, sliced garlic, ginger , chilies, salt chole masala and sauté it till oil separates . Add this into boiled chick peas and add lemon juice. Mix it well and cook together for 10 minutes in medium flame until it thickens"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("My Recipes"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipeName: recipes[index], ingrediets: ingredients[index], directions: directions[index],),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
