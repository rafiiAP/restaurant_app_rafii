import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:restaurant_app_rafii/data/model/model_restaurant.dart';

import '../exception.dart';

abstract class RestaurantData {
  Future<List<ModelRestaurant>> getListRestaurant();
}

class RestaurantDataImpl implements RestaurantData {
  @override
  Future<List<ModelRestaurant>> getListRestaurant() async {
    String cJSON =
        await rootBundle.loadString("assets/json/local_restaurant.json");
    try {
      var vaJSON = jsonDecode(cJSON);

      if (vaJSON["restaurants"] != null) {
        return (vaJSON["restaurants"] as List)
            .map((e) => ModelRestaurant.fromJson(e))
            .toList();
      } else {
        throw ResponseException(message: vaJSON["restaurants"]);
      }
    } on FormatException {
      throw ServerException(message: cJSON);
    }
  }
}
