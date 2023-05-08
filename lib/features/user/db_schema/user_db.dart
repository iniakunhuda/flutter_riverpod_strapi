import 'package:isar/isar.dart';

part 'user_db.g.dart';

@Collection(accessor: 'users')
@Name("User")
class UserDB {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? firstName;
  String? lastName;
  String? email;
  String? avatar;
}
