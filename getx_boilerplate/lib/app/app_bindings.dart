import 'package:get/get.dart';
import 'package:getx_boilerplate/app/data/network/network_request.dart';
import 'package:getx_boilerplate/app/data/repository/auth_repository.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {

    // Repositories
    Get.put(NetworkRequester(), permanent: true);
    Get.put(AuthRepository(), permanent: true);



  }
}
