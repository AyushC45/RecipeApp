import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;
  final String ingrediets;
  final String directions;

  DetailsScreen({Key? key, required this.recipeName, required this.ingrediets, required this.directions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(recipeName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Recipe Ingredients: $ingrediets"),
            SizedBox(height: 50),
            Text("Recipe Instructions: $directions"),
          ]
        )
      ),
    );
  }
}