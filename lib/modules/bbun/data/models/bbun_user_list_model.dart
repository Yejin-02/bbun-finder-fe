import "package:bbun/modules/bbun/data/models/bbun_user_model.dart";
import "package:bbun/modules/bbun/domain/entities/bbun_user_list_entity.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'bbun_user_list_model.freezed.dart';
part 'bbun_user_list_model.g.dart';

@freezed
class BbunUserListModel with _$BbunUserListModel implements BbunUserListEntity {
  const BbunUserListModel._();

  const factory BbunUserListModel({
    required int total,
    required List<BbunUserModel> list,
  }) = _BbunUserListModel;

  factory BbunUserListModel.fromJson(Map<String, dynamic> json) =>
      _$BbunUserListModelFromJson(json);
}
