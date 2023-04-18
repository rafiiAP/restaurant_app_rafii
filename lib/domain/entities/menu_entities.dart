import 'package:equatable/equatable.dart';

import '../../data/model/model_drink.dart';
import '../../data/model/model_food.dart';

class MenuEntity extends Equatable {
  final List<ModelFood> foods;
  final List<ModelDrink> drinks;

  const MenuEntity({
    this.foods = const [],
    this.drinks = const [],
  });

  @override
  List<Object?> get props => [
        foods,
        drinks,
      ];
}
