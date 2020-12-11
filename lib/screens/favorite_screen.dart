import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import '../models/meal.dart';
import '../components/meal_item.dart';

class FavoriteScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {

    if(favoriteMeals.isEmpty) {
      return Center(
        child: Text('Minhas Refeições Favoritas - Nenhuma Refeição no momento')
      );
    } else {

      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }


  }
}