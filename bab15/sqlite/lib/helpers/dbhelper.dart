import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqlite/models/contact.dart';

class DbHelper {
  static late DbHelper _dbHelper;
  static late Database _database;

  DbHelper._createObject();

  factory DbHelper() {
    //if (_dbHelper == null) {
    _dbHelper = DbHelper._createObject();
    //}
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'contact.db';
    var contactDatabase = openDatabase(path, version: 1, onCreate: _createDb);
    return contactDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE contact (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        phone TEXT
      )
    ''');
  }

  Future<Database> get database async {
    //if (_database == null) {
    _database = await initDb();
    //}
    return _database;
  }

  // create (C)
  Future<int> insert(Contact object) async {
    Database db = await this.database;
    int count = await db.insert('contact', object.toMap());
    return count;
  }

  // read (R)
  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var mapList = await db.query('contact', orderBy: 'name');
    return mapList;
  }

  // update (U)
  Future<int> update(Contact object) async {
    Database db = await this.database;
    int count = await db.update('contact', object.toMap(),
        where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  // delete (D)
  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db.delete('contact', where: 'id=?', whereArgs: [id]);
    return count;
  }

  Future<List<Contact>> getContactList() async {
    var contactMapList = await select();
    int count = contactMapList.length;

    List<Contact> contactList = [];
    for (int i = 0; i < count; i++) {
      contactList.add(Contact.fromMap(contactMapList[i]));
    }
    return contactList;
  }
}
