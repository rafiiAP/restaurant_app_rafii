import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_rafii/style/color.dart';

class CardWidget {
  static Widget horizontal(image, title) {
    return SizedBox(
      width: 170,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: Get.mediaQuery.size.width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: Get.textTheme.labelLarge!.copyWith(
                        color: ColorConfig.black, fontWeight: FontWeight.bold),
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
