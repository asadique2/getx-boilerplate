import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/data/model/dto/response.dart';
import 'package:getx_boilerplate/app/data/model/dto/user.dart';
import 'package:getx_boilerplate/app/data/repository/auth_repository.dart';
import 'package:getx_boilerplate/app/data/value/strings.dart';
import 'package:getx_boilerplate/app/routes/app_routes.dart';
import 'package:getx_boilerplate/base/base_controller.dart';
import 'package:getx_boilerplate/utils/app_utils.dart';
import 'package:getx_boilerplate/utils/helper/text_field_wrapper.dart';
import 'package:getx_boilerplate/utils/storage/storage_utils.dart';

class AuthController extends BaseController<AuthRepository> {
  TextFieldWrapper emailController = TextFieldWrapper();
  TextFieldWrapper passwordController = TextFieldWrapper();

  String dummyEmail = 'test@gmail.com';
  String dummyPass = '123456';

  final formKey = GlobalKey<FormState>();

  void handelLogin() {
    if (formKey.currentState!.validate()) {
      login();
    } else {
      AppUtils.showSnackBar('Email and Password both are required!');
    }
  }

  Future<void> login() async {
    /// here you can call your api and change UserModel according to your need.
    // RepoResponse<UserModel> response = await repository.login(LoginRequest(
    //     email: emailController.controller.text,
    //     password: passwordController.controller.text));
    //
    // handleLogin(response);

    if (emailController.controller.text == dummyEmail &&
        passwordController.controller.text == dummyPass) {
      Get.offAllNamed(Routes.HOME);
    } else {
      AppUtils.showSnackBar(ErrorMessages.invalidCredential);
    }
  }

  handleLogin(RepoResponse<UserModel> response) async {
    if (response.data?.id != null) {
      AppStorage.setUser(response.data);
      Get.offAllNamed(Routes.HOME);
    } else {
      AppUtils.showSnackBar(response.error?.message ?? "Something went wrong");
    }
  }
}
