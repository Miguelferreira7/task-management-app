import 'package:isar/isar.dart';

class DataBaseInstance {
  late Isar db;

  DataBaseInstance() {
    if (Isar.instanceNames.isEmpty) {
      Isar.open(
        [],
        inspector: true,
      );
    }
    Isar.getInstance();
  }
}