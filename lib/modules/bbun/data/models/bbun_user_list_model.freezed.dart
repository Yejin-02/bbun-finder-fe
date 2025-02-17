// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bbun_user_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BbunUserListModel _$BbunUserListModelFromJson(Map<String, dynamic> json) {
  return _BbunUserListModel.fromJson(json);
}

/// @nodoc
mixin _$BbunUserListModel {
  int get total => throw _privateConstructorUsedError;
  List<BbunUserModel> get list => throw _privateConstructorUsedError;

  /// Serializes this BbunUserListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BbunUserListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BbunUserListModelCopyWith<BbunUserListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BbunUserListModelCopyWith<$Res> {
  factory $BbunUserListModelCopyWith(
          BbunUserListModel value, $Res Function(BbunUserListModel) then) =
      _$BbunUserListModelCopyWithImpl<$Res, BbunUserListModel>;
  @useResult
  $Res call({int total, List<BbunUserModel> list});
}

/// @nodoc
class _$BbunUserListModelCopyWithImpl<$Res, $Val extends BbunUserListModel>
    implements $BbunUserListModelCopyWith<$Res> {
  _$BbunUserListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BbunUserListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BbunUserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BbunUserListModelImplCopyWith<$Res>
    implements $BbunUserListModelCopyWith<$Res> {
  factory _$$BbunUserListModelImplCopyWith(_$BbunUserListModelImpl value,
          $Res Function(_$BbunUserListModelImpl) then) =
      __$$BbunUserListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<BbunUserModel> list});
}

/// @nodoc
class __$$BbunUserListModelImplCopyWithImpl<$Res>
    extends _$BbunUserListModelCopyWithImpl<$Res, _$BbunUserListModelImpl>
    implements _$$BbunUserListModelImplCopyWith<$Res> {
  __$$BbunUserListModelImplCopyWithImpl(_$BbunUserListModelImpl _value,
      $Res Function(_$BbunUserListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BbunUserListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? list = null,
  }) {
    return _then(_$BbunUserListModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BbunUserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BbunUserListModelImpl extends _BbunUserListModel {
  const _$BbunUserListModelImpl(
      {required this.total, required final List<BbunUserModel> list})
      : _list = list,
        super._();

  factory _$BbunUserListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BbunUserListModelImplFromJson(json);

  @override
  final int total;
  final List<BbunUserModel> _list;
  @override
  List<BbunUserModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'BbunUserListModel(total: $total, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BbunUserListModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_list));

  /// Create a copy of BbunUserListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BbunUserListModelImplCopyWith<_$BbunUserListModelImpl> get copyWith =>
      __$$BbunUserListModelImplCopyWithImpl<_$BbunUserListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BbunUserListModelImplToJson(
      this,
    );
  }
}

abstract class _BbunUserListModel extends BbunUserListModel {
  const factory _BbunUserListModel(
      {required final int total,
      required final List<BbunUserModel> list}) = _$BbunUserListModelImpl;
  const _BbunUserListModel._() : super._();

  factory _BbunUserListModel.fromJson(Map<String, dynamic> json) =
      _$BbunUserListModelImpl.fromJson;

  @override
  int get total;
  @override
  List<BbunUserModel> get list;

  /// Create a copy of BbunUserListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BbunUserListModelImplCopyWith<_$BbunUserListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
