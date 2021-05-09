import 'package:freezed_annotation/freezed_annotation.dart';

part 'netkeiba_item.freezed.dart';

part 'netkeiba_item.g.dart';

@freezed
abstract class NetkeibaItem with _$NetkeibaItem {
  const factory NetkeibaItem({
    @JsonKey(name: 'image') String image,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'time') String time,
  }) = _NetkeibaItem;

  factory NetkeibaItem.fromJson(Map<String, dynamic> json) =>
      _$NetkeibaItemFromJson(json);
}
