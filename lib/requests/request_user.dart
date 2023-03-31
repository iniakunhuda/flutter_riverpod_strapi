import 'dart:convert';

class RequestUser {
  final String first_name;
  final String last_name;
  final String email;
  final String avatar;

  RequestUser({
    required this.first_name,
    required this.last_name,
    required this.email,
    this.avatar = "",
  });

  Map<String, dynamic> toMap() {
    return {
      'data': {
        'first_name': first_name,
        'last_name': last_name,
        'email': email,
        'avatar': avatar,
      }
    };
  }

  factory RequestUser.fromMap(Map<String, dynamic> map) {
    return RequestUser(
      first_name: map['first_name'] ?? '',
      last_name: map['last_name'] ?? '',
      email: map['email'] ?? '',
      avatar: map['avatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestUser.fromJson(String source) =>
      RequestUser.fromMap(json.decode(source));
}
