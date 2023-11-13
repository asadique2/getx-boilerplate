import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/data/value/dimens.dart';
import 'package:getx_boilerplate/widgets/common_field_button.dart';
import 'package:getx_boilerplate/widgets/common_text_input_field.dart';

import '../controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonTextField(wrapper: controller.emailController , hint: 'email',),
                const SizedBox(height: Dimens.gapX2,),
                CommonTextField(wrapper: controller.passwordController , hint: 'password',),
                const SizedBox(height: Dimens.gapX4),
                CommonFiledButton(onTap: ()=>controller.handelLogin(),buttonName: 'Login',)
              ],
            ).paddingSymmetric(horizontal: Dimens.paddingX2),
          )
        ),
      ),
    );
  }
}
