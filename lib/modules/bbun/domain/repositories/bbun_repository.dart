import 'package:bbun/modules/bbun/domain/entities/bbun_user_entity.dart';
import 'package:bbun/modules/bbun/domain/entities/bbun_user_list_entity.dart';

abstract class BbunRepository {
  Future<BbunUserEntity> getUser();

  Future<BbunUserListEntity> getBbunline();
}
