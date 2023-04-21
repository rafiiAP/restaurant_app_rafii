import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_rafii/data/image/image.dart';
import 'package:restaurant_app_rafii/domain/entities/drink_entities.dart';
import 'package:restaurant_app_rafii/domain/entities/food_entities.dart';
import 'package:restaurant_app_rafii/domain/entities/menu_entities.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/style/color.dart';
import 'package:restaurant_app_rafii/widget/card_horizontal.dart';

class DetailRestaurant extends StatelessWidget {
  final RestaurantEntity restaurantEntity;
  const DetailRestaurant({super.key, required this.restaurantEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Hero(
              tag: 'image',
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Image.network(
                  restaurantEntity.pictureId,
                  fit: BoxFit.cover,
                  width: Get.mediaQuery.size.width,
                  height: Get.size.height / 3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurantEntity.name,
                    style: Get.textTheme.titleLarge!
                        .copyWith(color: ColorConfig.mainColor),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.place,
                        color: ColorConfig.mainColor,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: Text(
                          restaurantEntity.city,
                          style: Get.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      RatingBar(
                        itemSize: 20,
                        allowHalfRating: true,
                        initialRating: restaurantEntity.rating,
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
                        child: Text(restaurantEntity.rating.toString()),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Description',
                    style: Get.textTheme.labelLarge!
                        .copyWith(color: ColorConfig.mainColor),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    restaurantEntity.description,
                    textAlign: TextAlign.justify,
                    style: Get.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Foods',
                    style: Get.textTheme.labelLarge!
                        .copyWith(color: ColorConfig.mainColor),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: restaurantEntity.menu!.toEntity().foods.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        MenuEntity menuEntity =
                            restaurantEntity.menu!.toEntity();

                        FoodEntitiy foodEntitiy =
                            menuEntity.foods[i].toEntity();

                        return CardWidget.horizontal(
                          food,
                          foodEntitiy.name,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Drinks',
                    style: Get.textTheme.labelLarge!
                        .copyWith(color: ColorConfig.mainColor),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount:
                          restaurantEntity.menu!.toEntity().drinks.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        MenuEntity menuEntity =
                            restaurantEntity.menu!.toEntity();
                        DrinkEntitiy drinkEntitiy =
                            menuEntity.drinks[i].toEntity();
                        return CardWidget.horizontal(drink, drinkEntitiy.name);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
