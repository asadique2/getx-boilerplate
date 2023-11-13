import 'package:get_storage/get_storage.dart';
import 'package:getx_boilerplate/app/data/model/dto/user.dart';

class AppStorage {
  AppStorage._privateConstructor();

  static final _box = GetStorage();

  static UserModel getUser() => UserModel.fromJson(_box.read(StorageKeys.user));

  static void setUser(UserModel? user) =>
      _box.write(StorageKeys.user, user?.toJson());

  static void clearUser() => _box.remove(StorageKeys.user);

  static bool isUserExists() => _box.read(StorageKeys.user) != null;

  static void clear() {
    _box.erase();
    print(isUserExists());
  }
}

class StorageKeys {
  StorageKeys._privateConstructor();

  static const String user = 'user';
}

