import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model_data/user.dart';

class UserDatabaseService {
  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'users.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nom TEXT,
            email TEXT,
            likes INTEGER,
            abonnes INTEGER,
            abonnements INTEGER,
            photoUrl TEXT,
            posts TEXT
          )
        ''');
      },
    );
  }

  Future<int> insertUser(UserModel user) async {
    final db = await database;
    return await db.insert('users', user.toMap());
  }

  Future<List<UserModel>> getAllUsers() async {
    final db = await database;
    final result = await db.query('users');
    return result.map((map) => UserModel.fromMap(map)).toList();
  }

  Future<void> deleteAllUsers() async {
    final db = await database;
    await db.delete('users');
  }
}