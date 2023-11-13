import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/app_bindings.dart';
import 'package:getx_boilerplate/app/data/value/constant.dart';
import 'package:getx_boilerplate/app/data/value/evn.dart';
import 'package:getx_boilerplate/app/routes/app_pages.dart';
import 'package:getx_boilerplate/app/routes/app_routes.dart';

import 'theme/app_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
        if (Get.isOverlaysOpen) Get.back();
      },
      child: GetMaterialApp(
        title: Env.title,
        navigatorKey: GlobalKeys.navigationKey,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        initialRoute: Routes.SPLASH,
        getPages: AppPages.pages,
        defaultTransition: Transition.cupertino,
        initialBinding: AppBinding(),
      ),
    );
  }
}
