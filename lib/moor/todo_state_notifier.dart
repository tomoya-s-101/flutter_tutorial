import 'package:flutter_app/moor/repository/todo_repository.dart';
import 'package:flutter_app/moor/state/todo_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'db.dart';

class TodoStateNotifier extends StateNotifier<TodoState> {
  TodoStateNotifier() : super(TodoState()) {
    readData();
  }

  TodoRepository _repository = TodoRepository();

  writeData(TodoItemData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.writeTodoData(data);
    readData();
  }

  deleteData(TodoItemData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.deleteTodoData(data.id);
    readData();
  }

  readData() async {
    state = state.copyWith(isLoading: true);

    final todoItems = await _repository.readAllTodoItems();

    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      todoItems: todoItems,
    );
  }
}
