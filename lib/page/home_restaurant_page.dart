import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/getx/home_getx.dart';
import 'package:restaurant_app_rafii/page/detail_restaurant_app.dart';
import 'package:restaurant_app_rafii/style/color.dart';

class HomeRestaurant extends StatelessWidget {
  const HomeRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    GetxHome getxHome = Get.put(GetxHome());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Restaurant',
                style: Get.textTheme.headlineLarge!
                    .copyWith(color: ColorConfig.mainColor),
              ),
              Text('Recommendation for you!',
                  style: Get.textTheme.titleLarge!
                      .copyWith(color: ColorConfig.mainColor)),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: getxHome.vaRestaurant.value.length,
                    itemBuilder: (context, i) {
                      RestaurantEntity restaurantEntity =
                          getxHome.vaRestaurant.value[i];
                      return Card(
                        child: InkWell(
                          onTap: () {
                            Get.to(
                              DetailRestaurant(
                                restaurantEntity: restaurantEntity,
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      restaurantEntity.pictureId,
                                      fit: BoxFit.fill,
                                      // width: 10,
                                      // height: 10,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        restaurantEntity.name,
                                        style: Get.textTheme.titleMedium!
                                            .copyWith(
                                                color: ColorConfig.mainColor),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.place,
                                            size: 12,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Expanded(
                                            child: Text(
                                              restaurantEntity.city,
                                              style: Get.textTheme.bodySmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 12,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text(restaurantEntity.rating
                                                .toString()),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
