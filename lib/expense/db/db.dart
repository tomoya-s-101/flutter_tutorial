import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'db.g.dart';

class MoneyInfo extends Table {
  IntColumn get id => integer().withDefault(Constant(1))();
  IntColumn get investmentMoney => integer().withDefault(Constant(0))();
  IntColumn get collectionMoney => integer().withDefault(Constant(0))();
  IntColumn get balanceMoney => integer().withDefault(Constant(0))();
  TextColumn get createdAt => text()();
  TextColumn get updatedAt => text()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [MoneyInfo])
class Database extends _$Database {
  Database() : super(_openConnection());

  static Database _instance;

  static Database getInstance() {
    if (_instance == null) {
      _instance = Database();
    }
    return _instance;
  }

  @override
  int get schemaVersion => 1;

  Future<List<MoneyInfo>> readAllMoneyInfoData() => select(moneyInfo).get();

  Future writeTodo(MoneyInfo data) => into(moneyInfo).insert(data);

  Future updateTodo(MoneyInfo data) => update(moneyInfo).replace(data);

  Future deleteTodo(int id) =>
      (delete(moneyInfo)..where((it) => it.id.equals(id))).go();
}