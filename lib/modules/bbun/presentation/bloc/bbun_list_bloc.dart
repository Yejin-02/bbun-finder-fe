import 'package:bbun/modules/bbun/domain/entities/bbun_user_entity.dart';
import 'package:bbun/modules/bbun/domain/entities/bbun_user_list_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bbun/modules/bbun/domain/repositories/bbun_repository.dart';

part 'bbun_list_bloc.freezed.dart';

@injectable
class BbunListBloc extends Bloc<BbunListEvent, BbunListState> {
  final BbunRepository _repository;

  BbunListBloc(this._repository) : super(const BbunListState.initial()) {
    on<_Load>(
      (event, emit) async {
        try {
          emit(const BbunListState.loading());
          final response = await _repository.getBbunline();
          final total = response.total;
          final bbunline = response.list;
          emit(BbunListState.loaded(total, bbunline));
        } catch (e) {
          emit(BbunListState.error(e.toString()));
        }
      },
    );
  }
}

@freezed
class BbunListEvent with _$BbunListEvent {
  const factory BbunListEvent.load() = _Load;
}

@freezed
class BbunListState with _$BbunListState {
  const BbunListState._();
  const factory BbunListState.initial() = _Initial;
  const factory BbunListState.loading() = _Loading;
  const factory BbunListState.loaded(int total, List<BbunUserEntity> bbunline) =
      _Loaded;
  const factory BbunListState.error(String error) = _Error;

  bool get hasResult => this is _Loaded || this is _Error;
  int get getTotal => maybeMap(
        loaded: (state) => state.total,
        orElse: () => 0,
      );
}
