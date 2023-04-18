import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';

import '../model/model_menu.dart';

class ModelRestaurant {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  Map<String, ModelMenu> menu;

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
    // List<dynamic> vaOffliner = json["vaTransaksiOffline"] ?? [];
    return ModelRestaurant(
      id: json["id"] ?? "",
      name: json["name"] ?? "",
      description: json["description"] ?? '',
      pictureId: json["pictureId"] ?? '',
      city: json["city"] ?? '',
      rating: double.parse(json["rating"].toString()),
      menu: json["menu"] ?? {},
    );
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
