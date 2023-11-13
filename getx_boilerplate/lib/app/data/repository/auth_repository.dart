import 'package:getx_boilerplate/app/data/model/dto/response.dart';
import 'package:getx_boilerplate/app/data/model/dto/user.dart';
import 'package:getx_boilerplate/app/data/model/request/auth_request.dart';
import 'package:getx_boilerplate/app/data/model/response/signup_response.dart';
import 'package:getx_boilerplate/app/data/value/urls.dart';
import 'package:getx_boilerplate/base/base_repository.dart';
import 'package:getx_boilerplate/utils/helper/exception_handler.dart';


class AuthRepository extends BaseRepository {


  Future<RepoResponse<UserModel>> login(LoginRequest data) async {
    final response =
    await controller.post(path: URLs.login, data: data.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: UserModel.fromJson(response));
  }


  Future<RepoResponse<SignupResponse>> signUp(SignupRequest data) async {
    final response =
    await controller.post(path: URLs.signUp, data: data.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: SignupResponse.fromJson(response));
  }

}
