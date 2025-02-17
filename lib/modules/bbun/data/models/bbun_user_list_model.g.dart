// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bbun_user_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BbunUserListModelImpl _$$BbunUserListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BbunUserListModelImpl(
      total: (json['total'] as num).toInt(),
      list: (json['list'] as List<dynamic>)
          .map((e) => BbunUserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BbunUserListModelImplToJson(
        _$BbunUserListModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'list': instance.list,
    };
