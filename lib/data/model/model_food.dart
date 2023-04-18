import 'package:restaurant_app_rafii/domain/entities/food_entities.dart';

class ModelFood {
  String name;

  ModelFood({required this.name});

  factory ModelFood.fromJson(Map<String, dynamic> json) {
    return ModelFood(
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
      };

  FoodEntitiy toEntity() => FoodEntitiy(
        name: name,
      );
}
