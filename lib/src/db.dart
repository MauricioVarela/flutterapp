import 'dart:io';

import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:registro_login/src/app.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {

  static final _databaseName = "MyDatabase.db";
  static final _databaseVersion = 1;

  static final table = 'my_table';

  static final columnId = '_id';
  static final nickName = 'nickName'; 
  static final columnName = 'name';
  static final columnApellido = 'apellido';
  static final columnEmail = 'email';
  static final columnPassword = 'password';
  static final columnCantidadIntento = 'cantidadIntento';
  static final columnImageIntro = 'intro';
  static final ColumnTipoUsuario = 'tipoUsuario';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();


  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }

    Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $nickName TEXT NOT NULL,
            $columnName TEXT NOT NULL,
            $columnApellido TEXT NOT NULL,
            $columnEmail TEXT NOT NULL,
            $columnPassword TEXT NOT NULL,
            $columnCantidadIntento INTEGER NOT NULL,
            $columnImageIntro TEXT,
            $ColumnTipoUsuario INTEGER NOT NULL,
          )
          ''');
  }
  



}