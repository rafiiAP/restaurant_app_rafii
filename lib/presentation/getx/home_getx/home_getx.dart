import 'package:get/get.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/injection.dart' as di;

import 'package:restaurant_app_rafii/domain/use_case/get_list_restaurant_usecase.dart';

class GetxHome extends GetxController {
  GetListRestaurantUseCase getListRestaurantUseCase =
      di.locator<GetListRestaurantUseCase>();

  Rx<List<RestaurantEntity>> vaRestaurant = Rx<List<RestaurantEntity>>([]);

  getDataRestaurant() async {
    getListRestaurantUseCase.getListRestaurant().then((value) {
      vaRestaurant.value = value;
    });
  }

  @override
  void onReady() {
    getDataRestaurant();
    super.onReady();
  }
}
