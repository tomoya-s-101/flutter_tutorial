import 'package:freezed_annotation/freezed_annotation.dart';

part 'mercari_item.freezed.dart';

part 'mercari_item.g.dart';

@freezed
abstract class MercariItem with _$MercariItem {
  const factory MercariItem({
    @JsonKey(name: 'image') String image,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'price') String price,
    @JsonKey(name: 'fav') int fav,
  }) = _MercariItem;

  factory MercariItem.fromJson(Map<String, dynamic> json) =>
      _$MercariItemFromJson(json);
}
