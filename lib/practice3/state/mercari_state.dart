import 'package:flutter_app/practice3/model/mercari_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mercari_state.freezed.dart';

part 'mercari_state.g.dart';

@freezed
abstract class MercariState with _$MercariState {
  const factory MercariState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<MercariItem> mercariItem,
  }) = _MercariState;

  factory MercariState.fromJson(Map<String, dynamic> json) =>
      _$MercariStateFromJson(json);
}
