import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../Widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favorites;
  FavoritesScreen(this.favorites);
  @override
  Widget build(BuildContext context) {
    if (favorites.isEmpty) {
      return Center(
        child: Text('You have no favorites yet -- Let\'s adding some'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favorites[index].id,
            title: favorites[index].title,
            affordability: favorites[index].affordability,
            imageURL: favorites[index].imageUrl,
            duration: favorites[index].duration,
            complexity: favorites[index].complexity,
          );
        },
        itemCount: favorites.length,
      );
    }
  }
}
