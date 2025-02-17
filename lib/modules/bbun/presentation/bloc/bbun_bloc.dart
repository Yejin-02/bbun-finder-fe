import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bbun/modules/bbun/domain/entities/bbun_user_entity.dart';
import 'package:bbun/modules/bbun/domain/repositories/bbun_repository.dart';

part 'bbun_bloc.freezed.dart';

@injectable
class BbunBloc extends Bloc<BbunEvent, BbunState> {
  final BbunRepository _repository;

  BbunBloc(this._repository) : super(const BbunState.initial()) {
    on<_Load>((event, emit) async {
      try {
        emit(const BbunState.loading());
        final user = await _repository.getUser();
        emit(BbunState.loaded(user));
      } catch (e) {
        emit(BbunState.error(e.toString()));
      }
    });
  }
}

@freezed
class BbunEvent with _$BbunEvent {
  const factory BbunEvent.load() = _Load;
}

@freezed
class BbunState with _$BbunState {
  const BbunState._();
  const factory BbunState.initial() = _Initial;
  const factory BbunState.loading() = _Loading;
  const factory BbunState.loaded(BbunUserEntity user) = _Loaded;
  const factory BbunState.error(String error) = _Error;

  bool get hasResult => this is _Loaded || this is _Error;
  bool get isBbunRegistered => maybeMap(
        loaded: (state) => state.user.isBbunRegistered,
        orElse: () => false,
      );
}
