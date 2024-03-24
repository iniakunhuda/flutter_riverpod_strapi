import 'package:isar/isar.dart';

part 'contact_db.g.dart';

@Collection(accessor: 'contacts')
@Name("Contact")
class ContactDB {
  Id id = Isar.autoIncrement;

  String? firstName;
  String? lastName;
  String? email;
  String? avatar;
}
