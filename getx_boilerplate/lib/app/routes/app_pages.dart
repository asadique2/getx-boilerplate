import 'package:get/get.dart';
import 'package:getx_boilerplate/app/modules/auth/bindings/auth_binding.dart';
import 'package:getx_boilerplate/app/modules/auth/views/login_view.dart';
import 'package:getx_boilerplate/app/modules/home/bindings/home_binding.dart';
import 'package:getx_boilerplate/app/modules/home/views/home_view.dart';
import 'package:getx_boilerplate/app/modules/splash/bindings/splash_binding.dart';
import 'package:getx_boilerplate/app/modules/splash/views/splash_view.dart';
import 'package:getx_boilerplate/app/routes/app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH,
        page: () => const SplashView(),
        binding: SplashBinding(),
        transition: Transition.leftToRight),
    GetPage(
      name: Routes.AUTH_LOGIN,
      page: () => const LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
