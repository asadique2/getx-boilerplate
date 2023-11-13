import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/theme/app_color.dart';
import 'package:getx_boilerplate/app/theme/styles.dart';

class AppUtils {
  AppUtils._privateConstructor();

  static showSnackBar(String text) {
    Get.rawSnackbar(
        snackPosition: SnackPosition.TOP,
        borderRadius: 20.0,
        borderColor: AppColors.black,
        messageText: Text(
          text,
          style: Styles.tsBlackRegular14
              .copyWith(color: AppColors.white, letterSpacing: 0.2),
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
        margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 14.0));
  }

}
