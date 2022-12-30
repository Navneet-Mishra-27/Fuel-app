class UserResponseModel {
  final String token;
  final String error;

  UserResponseModel({required this.token, required this.error});

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    return UserResponseModel(
      token: json["token"] ?? "",
      error: json["error"] ?? "",
    );
  }
}

class UserRequestModel {
  String email;
  String password;

  UserRequestModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }
}
