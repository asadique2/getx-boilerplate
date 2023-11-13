import 'package:get/get.dart';
import 'package:getx_boilerplate/app/data/network/network_request.dart';

class BaseRepository {
  NetworkRequester get controller => GetInstance().find<NetworkRequester>();
}
