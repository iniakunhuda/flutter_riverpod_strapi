import 'package:crud_riverpod/features/user/db_schema/user_db.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart' show Isar;
import 'package:path_provider/path_provider.dart'
    show getApplicationSupportDirectory;

late Isar isarDB;

Future<void> isarInit() async {
  final dir = await getApplicationSupportDirectory();
  isarDB = await Isar.open(
    [UserDBSchema],
    directory: dir.path,
    inspector: !kReleaseMode,
  );
}
