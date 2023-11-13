import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/data/value/dimens.dart';
import 'package:getx_boilerplate/app/data/value/images.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.icSplashLogo,
          width: Dimens.screenWidthX14,
        ),
      ),
    );
  }
}
