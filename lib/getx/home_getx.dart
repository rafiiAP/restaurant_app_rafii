import 'package:get/get.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/injection.dart' as di;

import 'package:restaurant_app_rafii/domain/use_case/get_list_restaurant_usecase.dart';

class GetxHome extends GetxController {
  GetListRestaurantUseCase getListRestaurantUseCase =
      di.locator<GetListRestaurantUseCase>();

  Rx<List<RestaurantEntity>> vaRestaurant = Rx<List<RestaurantEntity>>([]);

  getDataRestaurant() async {
    final result = await getListRestaurantUseCase.go();
    result.fold(
        // ignore: avoid_print, prefer_interpolation_to_compose_strings
        (l) => print("Errorr " + l.message), (r) {
      vaRestaurant.value = r;
    });
  }

  @override
  void onInit() {
    getDataRestaurant();
    super.onInit();
  }
}
