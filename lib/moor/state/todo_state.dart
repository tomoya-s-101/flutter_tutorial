import 'package:freezed_annotation/freezed_annotation.dart';

import '../db.dart';

part 'todo_state.freezed.dart';

part 'todo_state.g.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<TodoItemData> todoItems,
  }) = _TodoState;

  factory TodoState.fromJson(Map<String, dynamic> json) =>
      _$TodoStateFromJson(json);
}
