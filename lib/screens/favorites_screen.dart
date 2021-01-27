import 'package:DeliMeals/models/meal.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You have no favorites yet - start adding some !'),
    );
  }
}
