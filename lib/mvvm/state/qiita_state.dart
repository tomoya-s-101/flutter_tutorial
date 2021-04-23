import 'package:flutter_app/mvvm/model/qiita_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_state.freezed.dart';

part 'qiita_state.g.dart';

@freezed
abstract class QiitaState with _$QiitaState {
  const factory QiitaState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<QiitaItem> qiitaItems,
    String currentTag,
  }) = _QiitaState;

  factory QiitaState.fromJson(Map<String, dynamic> json) =>
      _$QiitaStateFromJson(json);
}
