import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_rafii/domain/entities/restaurant_entities.dart';
import 'package:restaurant_app_rafii/style/color.dart';

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
            ClipRRect(
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
                    'Makanan',
                    style: Get.textTheme.labelLarge!
                        .copyWith(color: ColorConfig.mainColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
