// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QiitaState _$_$_QiitaStateFromJson(Map<String, dynamic> json) {
  return _$_QiitaState(
    isLoading: json['isLoading'] as bool ?? false,
    isReadyData: json['isReadyData'] as bool ?? false,
    qiitaItems: (json['qiitaItems'] as List)
        ?.map((e) =>
            e == null ? null : QiitaItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    currentTag: json['currentTag'] as String,
  );
}

Map<String, dynamic> _$_$_QiitaStateToJson(_$_QiitaState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'isReadyData': instance.isReadyData,
      'qiitaItems': instance.qiitaItems,
      'currentTag': instance.currentTag,
    };
