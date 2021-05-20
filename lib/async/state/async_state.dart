import 'package:flutter_app/async/model/async_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_state.freezed.dart';

@freezed
abstract class AsyncState with _$AsyncState {
  const factory AsyncState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    AsyncItem asyncItem,
  }) = _AsyncState;
}