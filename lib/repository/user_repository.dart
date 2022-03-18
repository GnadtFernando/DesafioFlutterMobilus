import 'dart:convert';

import 'package:http/http.dart';

import '../models/user.dart';

class UserRepository {
  final Client user;

  UserRepository(this.user);

  Future<List<User>> getUser() async {
    final response = await user
        .get(Uri.parse('https://62348c2fdebd056201e7d93f.mockapi.io/user'));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => User.fromMap(e)).toList();
    } else {
      throw Exception('erro');
    }
  }
}
