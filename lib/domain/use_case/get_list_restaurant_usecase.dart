import 'package:dartz/dartz.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/domain/repositories/restaurant_repositories.dart';

import '../../data/failur/failur.dart';

class GetListRestaurantUseCase {
  final RestaurantRepositories restaurantRepositories;

  GetListRestaurantUseCase(this.restaurantRepositories);
  Future<Either<Failure, List<RestaurantEntity>>> go() {
    return restaurantRepositories.getListRestaurant();
  }
}
