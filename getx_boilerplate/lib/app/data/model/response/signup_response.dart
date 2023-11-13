class SignupResponse {
  SignupResponse({
    this.response,
    this.email,
    this.status,
    this.resend,
  });

  SignupResponse.fromJson(dynamic json) {
    response = json['response'];
    email = json['email'];
    status = json['status'];
    resend = json['resend'];
  }

  String? response;
  String? email;
  bool? status;
  bool? resend;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response'] = response;
    map['email'] = email;
    map['status'] = status;
    map['resend'] = resend;
    return map;
  }
}
