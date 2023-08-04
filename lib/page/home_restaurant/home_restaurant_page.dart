import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/page/detail_restaurant/detail_restaurant_app.dart';
import 'package:restaurant_app_rafii/page/home_restaurant/home_getx.dart';
import 'package:restaurant_app_rafii/style/color.dart';

class HomeRestaurant extends StatelessWidget {
  const HomeRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    GetxHome getxHome = Get.put(GetxHome());
    getxHome.getDataRestaurant();

    return Scaffold(
      body: Hero(
        tag: 'image',
        child: SafeArea(
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
                        return InkWell(
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
                                      height: 80,
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
                                            color: Colors.white,
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
                                          RatingBar(
                                            itemSize: 20,
                                            allowHalfRating: true,
                                            initialRating:
                                                restaurantEntity.rating,
                                            ratingWidget: RatingWidget(
                                              full: const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              half: const Icon(
                                                Icons.star_half,
                                                color: Colors.amber,
                                              ),
                                              empty: const Icon(
                                                Icons.star_border,
                                                color: Colors.amber,
                                              ),
                                            ),
                                            onRatingUpdate: (rating) {
                                              // print(rating);
                                            },
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text(restaurantEntity.rating
                                                .toString()),
                                          ),
                                        ],
                                      ),
                                      // Row(
                                      //   children: [
                                      //     const Icon(
                                      //       Icons.star,
                                      //       color: Colors.yellow,
                                      //       size: 12,
                                      //     ),
                                      //     const SizedBox(
                                      //       width: 5,
                                      //     ),
                                      //     Expanded(
                                      //       child: Text(restaurantEntity
                                      //           .rating
                                      //           .toString()),
                                      //     ),
                                      //   ],
                                      // )
                                    ],
                                  ),
                                )
                              ],
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
      ),
    );
  }
}
