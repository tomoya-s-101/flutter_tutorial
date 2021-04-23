// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'qiita_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QiitaState _$QiitaStateFromJson(Map<String, dynamic> json) {
  return _QiitaState.fromJson(json);
}

class _$QiitaStateTearOff {
  const _$QiitaStateTearOff();

// ignore: unused_element
  _QiitaState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<QiitaItem> qiitaItems,
      String currentTag}) {
    return _QiitaState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      qiitaItems: qiitaItems,
      currentTag: currentTag,
    );
  }
}

// ignore: unused_element
const $QiitaState = _$QiitaStateTearOff();

mixin _$QiitaState {
  bool get isLoading;
  bool get isReadyData;
  List<QiitaItem> get qiitaItems;
  String get currentTag;

  Map<String, dynamic> toJson();
  $QiitaStateCopyWith<QiitaState> get copyWith;
}

abstract class $QiitaStateCopyWith<$Res> {
  factory $QiitaStateCopyWith(
          QiitaState value, $Res Function(QiitaState) then) =
      _$QiitaStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag});
}

class _$QiitaStateCopyWithImpl<$Res> implements $QiitaStateCopyWith<$Res> {
  _$QiitaStateCopyWithImpl(this._value, this._then);

  final QiitaState _value;
  // ignore: unused_field
  final $Res Function(QiitaState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object qiitaItems = freezed,
    Object currentTag = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      qiitaItems: qiitaItems == freezed
          ? _value.qiitaItems
          : qiitaItems as List<QiitaItem>,
      currentTag:
          currentTag == freezed ? _value.currentTag : currentTag as String,
    ));
  }
}

abstract class _$QiitaStateCopyWith<$Res> implements $QiitaStateCopyWith<$Res> {
  factory _$QiitaStateCopyWith(
          _QiitaState value, $Res Function(_QiitaState) then) =
      __$QiitaStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag});
}

class __$QiitaStateCopyWithImpl<$Res> extends _$QiitaStateCopyWithImpl<$Res>
    implements _$QiitaStateCopyWith<$Res> {
  __$QiitaStateCopyWithImpl(
      _QiitaState _value, $Res Function(_QiitaState) _then)
      : super(_value, (v) => _then(v as _QiitaState));

  @override
  _QiitaState get _value => super._value as _QiitaState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object qiitaItems = freezed,
    Object currentTag = freezed,
  }) {
    return _then(_QiitaState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      qiitaItems: qiitaItems == freezed
          ? _value.qiitaItems
          : qiitaItems as List<QiitaItem>,
      currentTag:
          currentTag == freezed ? _value.currentTag : currentTag as String,
    ));
  }
}

@JsonSerializable()
class _$_QiitaState implements _QiitaState {
  const _$_QiitaState(
      {this.isLoading = false,
      this.isReadyData = false,
      this.qiitaItems,
      this.currentTag})
      : assert(isLoading != null),
        assert(isReadyData != null);

  factory _$_QiitaState.fromJson(Map<String, dynamic> json) =>
      _$_$_QiitaStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final List<QiitaItem> qiitaItems;
  @override
  final String currentTag;

  @override
  String toString() {
    return 'QiitaState(isLoading: $isLoading, isReadyData: $isReadyData, qiitaItems: $qiitaItems, currentTag: $currentTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QiitaState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isReadyData, isReadyData) ||
                const DeepCollectionEquality()
                    .equals(other.isReadyData, isReadyData)) &&
            (identical(other.qiitaItems, qiitaItems) ||
                const DeepCollectionEquality()
                    .equals(other.qiitaItems, qiitaItems)) &&
            (identical(other.currentTag, currentTag) ||
                const DeepCollectionEquality()
                    .equals(other.currentTag, currentTag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(qiitaItems) ^
      const DeepCollectionEquality().hash(currentTag);

  @override
  _$QiitaStateCopyWith<_QiitaState> get copyWith =>
      __$QiitaStateCopyWithImpl<_QiitaState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QiitaStateToJson(this);
  }
}

abstract class _QiitaState implements QiitaState {
  const factory _QiitaState(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag}) = _$_QiitaState;

  factory _QiitaState.fromJson(Map<String, dynamic> json) =
      _$_QiitaState.fromJson;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<QiitaItem> get qiitaItems;
  @override
  String get currentTag;
  @override
  _$QiitaStateCopyWith<_QiitaState> get copyWith;
}
