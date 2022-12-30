import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/add_User.dart';

class APIService {
  Future<UserResponseModel> login(UserRequestModel requestModel) async {
    var url = Uri.parse("http://localhost:8000/users/addUser");

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return UserResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
