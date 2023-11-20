import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/domain/repositories/restaurant_repositories.dart';

class GetListRestaurantUseCase {
  final RestaurantRepositories restaurantRepositories;

  GetListRestaurantUseCase(this.restaurantRepositories);
  Future<List<RestaurantEntity>> getListRestaurant() async {
    List<RestaurantEntity> vaRestaurant = <RestaurantEntity>[];
    restaurantRepositories.getListRestaurant().then((value) {
      value.fold(
          // ignore: avoid_print, prefer_interpolation_to_compose_strings
          (l) => print("Errorr " + l.message), (r) {
        vaRestaurant.addAll(r);
      });
    });

    return vaRestaurant;
  }
}
