import 'package:DeliMeals/models/meal.dart';
import 'package:DeliMeals/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;
  CategoryMealsScreen(this.availableMeals);
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    final caregoryMeals = availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle Meals'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: caregoryMeals[index].id,
            title: caregoryMeals[index].title,
            imageUrl: caregoryMeals[index].imageUrl,
            duration: caregoryMeals[index].duration,
            complexity: caregoryMeals[index].complexity,
            affordability: caregoryMeals[index].affordability,
          );
        },
        itemCount: caregoryMeals.length,
      ),
    );
  }
}
