class UserModel {
  UserModel({
    this.token,
    this.validAppCredentialKey,
    this.name,
    this.age,
    this.gender,
    this.mobile,
    this.email,
    this.deviceID,
    this.platform,
    this.appVersion,
    this.id,});

  UserModel.fromJson(dynamic json) {
    token = json['token'];
    validAppCredentialKey = json['validAppCredentialKey'];
    name = json['name'];
    age = json['age'];
    gender = json['gender'];
    mobile = json['mobile'];
    email = json['email'];
    deviceID = json['deviceID'];
    platform = json['platform'];
    appVersion = json['appVersion'];
    id = json['_id'];
  }
  String? token;
  String? validAppCredentialKey;
  String? name;
  int? age;
  String? gender;
  String? mobile;
  String? email;
  String? deviceID;
  String? platform;
  String? appVersion;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['validAppCredentialKey'] = validAppCredentialKey;
    map['name'] = name;
    map['age'] = age;
    map['gender'] = gender;
    map['mobile'] = mobile;
    map['email'] = email;
    map['deviceID'] = deviceID;
    map['platform'] = platform;
    map['appVersion'] = appVersion;
    map['_id'] = id;
    return map;
  }

}