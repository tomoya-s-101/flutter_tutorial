import 'package:flutter_app/expense/db/db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_info_state.freezed.dart';

part 'money_info_state.g.dart';

@freezed
abstract class MoneyInfoState with _$MoneyInfoState {
  const factory MoneyInfoState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<MoneyInfo> moneyItems,
  }) = _MoneyInfoState;

  factory MoneyInfoState.fromJson(Map<String, dynamic> json) =>
      _$MoneyInfoStateFromJson(json);
}
