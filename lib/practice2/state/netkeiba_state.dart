import 'package:flutter_app/practice2/model/netkeiba_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'netkaiba_state.freezed.dart';

part 'netkaiba_state.g.dart';

@freezed
abstract class NetkeibaState with _$NetkeibaState {
  const factory NetkeibaState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<NetkeibaItem> netkeibaItem,
  }) = _NetkeibaState;

  factory NetkeibaState.fromJson(Map<String, dynamic> json) =>
      _$NetkeibaStateFromJson(json);
}
