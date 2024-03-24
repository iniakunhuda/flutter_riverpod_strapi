import 'package:flutter_riverpod_strapi/features/contact/data/database/contact_db.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart' show Isar;
import 'package:path_provider/path_provider.dart'
    show getApplicationSupportDirectory;

late Isar isarDB;

Future<void> isarInit() async {
  final dir = await getApplicationSupportDirectory();
  isarDB = await Isar.open(
    [ContactDBSchema],
    directory: dir.path,
    inspector: !kReleaseMode,
  );
}
