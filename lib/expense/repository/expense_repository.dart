import 'package:flutter_app/expense/db/db.dart';

class MoneyInfoRepository {
  Database _database;

  MoneyInfoRepository() {
    _database = Database.getInstance();
  }

  Future<List<MoneyInfo>> readAllMoneyItems() async =>
      await _database.readAllMoneyData();

  Future writeMoneyData(MoneyInfo data) async =>
      await _database.writeTodo(data);

  Future deleteMoneyData(int id) async => await _database.deleteTodo(id);

  Future updateMoneyData(MoneyInfo data) async =>
      await _database.updateTodo(data);

  Future<int> getTotalMoney() async {

  }
}
