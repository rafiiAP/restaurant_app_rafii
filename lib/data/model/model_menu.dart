import 'package:restaurant_app_rafii/domain/entities/menu_entities.dart';
import 'package:restaurant_app_rafii/data/model/model_drink.dart';
import 'package:restaurant_app_rafii/data/model/model_food.dart';

class ModelMenu {
  List<ModelFood> foods;
  List<ModelDrink> drinks;

  ModelMenu({required this.foods, required this.drinks});

  factory ModelMenu.fromJson(Map<String, dynamic> json) {
    return ModelMenu(
      foods: (json['foods'] as List).map((e) => ModelFood.fromJson(e)).toList(),
      drinks:
          (json['drinks'] as List).map((e) => ModelDrink.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        "foods": foods,
        "drinks": drinks,
      };

  MenuEntity toEntity() => MenuEntity(
        foods: foods,
        drinks: drinks,
      );
}
