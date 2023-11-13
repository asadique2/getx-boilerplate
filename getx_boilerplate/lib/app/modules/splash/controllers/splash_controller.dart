import 'package:get/get.dart';
import 'package:getx_boilerplate/app/routes/app_routes.dart';
import 'package:getx_boilerplate/utils/storage/storage_utils.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _startOnBoarding();
    super.onInit();
  }

  _startOnBoarding() async {
    await Future.delayed(const Duration(seconds: 1));

    /// you can modified this condition according to you need
    if (AppStorage.isUserExists()) {
        Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.AUTH_LOGIN);
    }
  }
}
