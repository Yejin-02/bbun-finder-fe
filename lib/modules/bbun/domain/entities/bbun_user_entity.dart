import 'package:bbun/modules/bbun/data/models/bbun_user_model.dart';

class BbunUserEntity {
  final String uuid;
  final String name;
  final String studentId;
  final String email;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final bool isBbunRegistered;
  final String? department;
  final String? mbti;
  final String? instaId;
  final String? description;
  final String? profileImage;

  BbunUserEntity({
    required this.uuid,
    required this.name,
    required this.studentId,
    required this.email,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.isBbunRegistered,
    required this.department,
    this.mbti,
    this.instaId,
    this.description,
    this.profileImage,
  });

  factory BbunUserEntity.fromModel(BbunUserModel model) {
    return BbunUserEntity(
      uuid: model.uuid,
      name: model.name,
      studentId: model.studentId,
      email: model.email,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deletedAt: model.deletedAt,
      isBbunRegistered: model.isBbunRegistered,
      department: model.department,
      mbti: model.mbti,
      instaId: model.instaId,
      description: model.description,
      profileImage: model.profileImage,
    );
  }

  BbunUserModel toModel() {
    return BbunUserModel(
      uuid: uuid,
      name: name,
      studentId: studentId,
      email: email,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      isBbunRegistered: isBbunRegistered,
      department: department,
      mbti: mbti,
      instaId: instaId,
      description: description,
      profileImage: profileImage,
    );
  }
}
