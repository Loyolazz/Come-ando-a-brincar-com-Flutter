import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'

Future<Database> getDatabase(database) async {
  final String path = join(
      await getDatabasesPath(), 'task.db'
  );
  return openDatabase(path, onCreate: (db, version) {
    db.execute(table)
  }, version: 1,);
}