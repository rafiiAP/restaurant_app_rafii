// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:restaurant_app_rafii/data/datasources/restaurant_data.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/data/failur.dart';
import 'package:restaurant_app_rafii/domain/repositories/restaurant_repositories.dart';

import '../exception.dart';

class RestaurantRepositoriesImpl implements RestaurantRepositories {
  final RestaurantData restaurantData;
  RestaurantRepositoriesImpl({required this.restaurantData});

  @override
  Future<Either<Failure, List<RestaurantEntity>>> getListRestaurant() async {
    try {
      final vaResult = await restaurantData.getListRestaurant();
      List<RestaurantEntity> vaRestaurant =
          vaResult.map((e) => e.toEntity()).toList();
      return Right(vaRestaurant);
    } on ServerException catch (e) {
      print('errorr 1 ${e.message}');
      return left(ServerFailure(e.message));
    } on ResponseException catch (e) {
      print('errorr 2 ${e.message}');
      return left(ResponseFailure(e.message));
    }
  }
}
