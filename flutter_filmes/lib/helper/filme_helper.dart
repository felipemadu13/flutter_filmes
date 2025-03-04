import 'package:flutter_filmes/domain/filme.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FilmeHelper {
  static final FilmeHelper _instance = FilmeHelper.internal();
  factory FilmeHelper() => _instance;

  FilmeHelper.internal();

  Database? _db;

  Future<Database> get db async {
    _db ??= await initDb();
    return _db!;
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'filmes.db');

    return await openDatabase(path, version: 1, onCreate: (Database db, int newerVersion) async {
      await db.execute(
        '''
        CREATE TABLE ${FilmeContract.filmeTable}(
          ${FilmeContract.idColumn} INTEGER PRIMARY KEY, 
          ${FilmeContract.tituloColumn} TEXT, 
          ${FilmeContract.anoColumn} INTEGER, 
          ${FilmeContract.direcaoColumn} TEXT, 
          ${FilmeContract.resumoColumn} TEXT, 
          ${FilmeContract.urlCartazColumn} TEXT, 
          ${FilmeContract.notaColumn} REAL
        )
        '''
      );
    });
  }

  Future<Filme> saveFilme(Filme filme) async {
    Database dbFilme = await db;
    filme.id = await dbFilme.insert(FilmeContract.filmeTable, filme.toMap());
    return filme;
  }

  Future<Filme?> getFilme(int id) async {
    Database dbFilme = await db;
    List<Map<String, dynamic>> maps = await dbFilme.query(
      FilmeContract.filmeTable,
      columns: [
        FilmeContract.idColumn,
        FilmeContract.tituloColumn,
        FilmeContract.anoColumn,
        FilmeContract.direcaoColumn,
        FilmeContract.resumoColumn,
        FilmeContract.urlCartazColumn,
        FilmeContract.notaColumn
      ],
      where: '${FilmeContract.idColumn} = ?',
      whereArgs: [id]
    );

    if (maps.isNotEmpty) {
      return Filme.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> deleteFilme(int id) async {
    Database dbFilme = await db;
    return await dbFilme.delete(
      FilmeContract.filmeTable,
      where: '${FilmeContract.idColumn} = ?',
      whereArgs: [id]
    );
  }

  Future<int> updateFilme(Filme filme) async {
    Database dbFilme = await db;
    return await dbFilme.update(
      FilmeContract.filmeTable,
      filme.toMap(),
      where: '${FilmeContract.idColumn} = ?',
      whereArgs: [filme.id]
    );
  }

  Future<List<Filme>> getFilmes() async {
    Database dbFilme = await db;
    List<Map<String, dynamic>> listMap = await dbFilme.query(FilmeContract.filmeTable);
    List<Filme> listFilme = [];

    for (Map<String, dynamic> m in listMap) {
      listFilme.add(Filme.fromMap(m));
    }

    return listFilme;
  }
}
