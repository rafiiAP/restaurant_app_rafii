import 'package:get_it/get_it.dart';
import 'package:restaurant_app_rafii/data/datasources/restaurant_data.dart';
import 'package:restaurant_app_rafii/data/repositori/restaurant_repositori_impl.dart';
import 'package:restaurant_app_rafii/domain/repositories/restaurant_repositories.dart';
import 'package:restaurant_app_rafii/domain/use_case/get_list_restaurant_usecase.dart';

final locator = GetIt.instance;

init() {
  // DATA SOURCE

  locator.registerLazySingleton<RestaurantData>(() => RestaurantDataImpl());

  // REPOSITORI

  locator.registerLazySingleton<RestaurantRepositories>(
      () => RestaurantRepositoriesImpl(restaurantData: locator()));

  // USECASE
  locator.registerLazySingleton(() => GetListRestaurantUseCase(locator()));
}
