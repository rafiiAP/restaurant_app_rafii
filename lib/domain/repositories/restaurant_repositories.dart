import 'package:dartz/dartz.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';

import '../../data/failur.dart';

abstract class RestaurantRepositories {
  Future<Either<Failure, List<RestaurantEntity>>> getListRestaurant();
}
