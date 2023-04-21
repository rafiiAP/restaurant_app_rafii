// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

import '../../data/model/model_menu.dart';

class RestaurantEntity extends Equatable {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  ModelMenu? menu;

  RestaurantEntity({
    this.id = '',
    this.name = '',
    this.description = '',
    this.pictureId = '',
    this.city = '',
    this.rating = 0.0,
    this.menu,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        pictureId,
        city,
        rating,
        menu,
      ];
}
