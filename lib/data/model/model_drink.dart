import 'package:restaurant_app_rafii/domain/entities/drink_entities.dart';

class ModelDrink {
  String name;

  ModelDrink({required this.name});

  factory ModelDrink.fromJson(Map<String, dynamic> json) {
    return ModelDrink(
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
      };

  DrinkEntitiy toEntity() => DrinkEntitiy(
        name: name,
      );
}
