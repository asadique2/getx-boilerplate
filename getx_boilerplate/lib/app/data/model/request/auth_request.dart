class LoginRequest {
  late String email;
  late String password;

  LoginRequest({
    required this.email,
    required this.password,
  });

  LoginRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}

class SignupRequest {
  SignupRequest({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNo,
    required this.password,
    required this.reEnterPassword,
  });

  SignupRequest.fromJson(dynamic json) {
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phoneNo = json['phone_no'];
    password = json['password'];
    reEnterPassword = json['re_enter_password'];
  }

  late String email;
  late String firstName;
  late String lastName;
  late String phoneNo;
  late String password;
  late String reEnterPassword;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['phone_no'] = phoneNo;
    map['password'] = password;
    map['re_enter_password'] = reEnterPassword;
    return map;
  }
}
