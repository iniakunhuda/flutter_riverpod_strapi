// import 'dart:convert';
// UserAttributes userModelFromJson(String str) => UserAttributes.fromJson(json.decode(str));
// String userModelToJson(UserAttributes data) => json.encode(data.toJson());

class ListUserModel {
  ListUserModel({
    required this.data,
    required this.meta,
  });

  List<UserModel> data;
  Meta meta;

  factory ListUserModel.fromJson(Map<String, dynamic> json) => ListUserModel(
        data: List<UserModel>.from(
            json["data"].map((x) => UserModel.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class DetailUserModel {
  DetailUserModel({
    required this.data,
    required this.meta,
  });

  UserModel data;
  Meta meta;

  factory DetailUserModel.fromJson(Map<String, dynamic> json) =>
      DetailUserModel(
        data: UserModel.fromJson(json["data"]),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "meta": meta.toJson(),
      };
}

class UserModel {
  UserModel({
    required this.id,
    required this.attributes,
  });

  int id;
  UserAttributes attributes;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        attributes: UserAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class UserAttributes {
  UserAttributes({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });

  String firstName;
  String lastName;
  String email;
  String avatar;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;

  factory UserAttributes.fromJson(Map<String, dynamic> json) => UserAttributes(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        avatar: json["avatar"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "avatar": avatar,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
      };
}

class Meta {
  Meta({Pagination? pagination});

  Pagination? pagination;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: json["pagination"] != null
            ? Pagination.fromJson(json["pagination"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
      };
}

class Pagination {
  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  int page;
  int pageSize;
  int pageCount;
  int total;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
