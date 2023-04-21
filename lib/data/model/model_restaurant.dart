import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';

import '../model/model_menu.dart';

class ModelRestaurant {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  ModelMenu menu;

  ModelRestaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.menu,
  });

  factory ModelRestaurant.fromJson(Map<String, dynamic> json) {
    return ModelRestaurant(
        id: json["id"] ?? "",
        name: json["name"] ?? "",
        description: json["description"] ?? '',
        pictureId: json["pictureId"] ?? '',
        city: json["city"] ?? '',
        rating: double.parse(json["rating"].toString()),
        menu: ModelMenu.fromJson(json['menus']));
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "pictureId": pictureId,
        "city": city,
        "rating": rating,
        "menu": menu,
      };

  RestaurantEntity toEntity() => RestaurantEntity(
        id: id,
        name: name,
        description: description,
        pictureId: pictureId,
        city: city,
        rating: rating,
        menu: menu,
      );
}
