import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

class CardWidget {
  static Widget horizontal(image, title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: 170,
      child: InkWell(
        onTap: () {
          showToast(title, position: ToastPosition.bottom);
        },
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                  width: Get.mediaQuery.size.width,
                ),
              ),
            ),
            Flexible(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: Get.textTheme.labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
