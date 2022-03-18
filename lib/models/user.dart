import 'dart:convert';

class User {
  final String login;
  final String password;

  User(this.login, this.password);

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['login'] ?? '',
      map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
