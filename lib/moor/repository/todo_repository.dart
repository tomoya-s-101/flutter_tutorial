import '../db.dart';

class TodoRepository {
  TodoRepository() {
    _database = MyDatabase.getInstance();
  }

  MyDatabase _database;

  Future<List<TodoItemData>> readAllTodoItems() async =>
      await _database.readAllTodoData();

  Future writeTodoData(TodoItemData data) async =>
      await _database.writeTodo(data);

  Future deleteTodoData(int id) async => await _database.deleteTodo(id);

  Future updateTodoData(TodoItemData data) async =>
      await _database.updateTodo(data);
}
