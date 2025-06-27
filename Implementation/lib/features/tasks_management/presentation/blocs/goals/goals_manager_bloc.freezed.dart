// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goals_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoalsManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> taskIds, List<String> subTaskIds)
        started,
    required TResult Function(GoalEntity entity) create,
    required TResult Function(GoalEntity entity) update,
    required TResult Function(String id) delete,
    required TResult Function(List<String> refIds) fetchByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult? Function(GoalEntity entity)? create,
    TResult? Function(GoalEntity entity)? update,
    TResult? Function(String id)? delete,
    TResult? Function(List<String> refIds)? fetchByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult Function(GoalEntity entity)? create,
    TResult Function(GoalEntity entity)? update,
    TResult Function(String id)? delete,
    TResult Function(List<String> refIds)? fetchByRefIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FetchByRefIds value) fetchByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FetchByRefIds value)? fetchByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FetchByRefIds value)? fetchByRefIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsManagerEventCopyWith<$Res> {
  factory $GoalsManagerEventCopyWith(
          GoalsManagerEvent value, $Res Function(GoalsManagerEvent) then) =
      _$GoalsManagerEventCopyWithImpl<$Res, GoalsManagerEvent>;
}

/// @nodoc
class _$GoalsManagerEventCopyWithImpl<$Res, $Val extends GoalsManagerEvent>
    implements $GoalsManagerEventCopyWith<$Res> {
  _$GoalsManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> taskIds, List<String> subTaskIds});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GoalsManagerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIds = null,
    Object? subTaskIds = null,
  }) {
    return _then(_$StartedImpl(
      taskIds: null == taskIds
          ? _value._taskIds
          : taskIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subTaskIds: null == subTaskIds
          ? _value._subTaskIds
          : subTaskIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(
      {final List<String> taskIds = const [],
      final List<String> subTaskIds = const []})
      : _taskIds = taskIds,
        _subTaskIds = subTaskIds;

  final List<String> _taskIds;
  @override
  @JsonKey()
  List<String> get taskIds {
    if (_taskIds is EqualUnmodifiableListView) return _taskIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskIds);
  }

  final List<String> _subTaskIds;
  @override
  @JsonKey()
  List<String> get subTaskIds {
    if (_subTaskIds is EqualUnmodifiableListView) return _subTaskIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subTaskIds);
  }

  @override
  String toString() {
    return 'GoalsManagerEvent.started(taskIds: $taskIds, subTaskIds: $subTaskIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality().equals(other._taskIds, _taskIds) &&
            const DeepCollectionEquality()
                .equals(other._subTaskIds, _subTaskIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_taskIds),
      const DeepCollectionEquality().hash(_subTaskIds));

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> taskIds, List<String> subTaskIds)
        started,
    required TResult Function(GoalEntity entity) create,
    required TResult Function(GoalEntity entity) update,
    required TResult Function(String id) delete,
    required TResult Function(List<String> refIds) fetchByRefIds,
  }) {
    return started(taskIds, subTaskIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult? Function(GoalEntity entity)? create,
    TResult? Function(GoalEntity entity)? update,
    TResult? Function(String id)? delete,
    TResult? Function(List<String> refIds)? fetchByRefIds,
  }) {
    return started?.call(taskIds, subTaskIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult Function(GoalEntity entity)? create,
    TResult Function(GoalEntity entity)? update,
    TResult Function(String id)? delete,
    TResult Function(List<String> refIds)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(taskIds, subTaskIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FetchByRefIds value) fetchByRefIds,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FetchByRefIds value)? fetchByRefIds,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FetchByRefIds value)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GoalsManagerEvent {
  const factory _Started(
      {final List<String> taskIds,
      final List<String> subTaskIds}) = _$StartedImpl;

  List<String> get taskIds;
  List<String> get subTaskIds;

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoalEntity entity});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$GoalsManagerEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$CreateImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as GoalEntity,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.entity);

  @override
  final GoalEntity entity;

  @override
  String toString() {
    return 'GoalsManagerEvent.create(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> taskIds, List<String> subTaskIds)
        started,
    required TResult Function(GoalEntity entity) create,
    required TResult Function(GoalEntity entity) update,
    required TResult Function(String id) delete,
    required TResult Function(List<String> refIds) fetchByRefIds,
  }) {
    return create(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult? Function(GoalEntity entity)? create,
    TResult? Function(GoalEntity entity)? update,
    TResult? Function(String id)? delete,
    TResult? Function(List<String> refIds)? fetchByRefIds,
  }) {
    return create?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult Function(GoalEntity entity)? create,
    TResult Function(GoalEntity entity)? update,
    TResult Function(String id)? delete,
    TResult Function(List<String> refIds)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FetchByRefIds value) fetchByRefIds,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FetchByRefIds value)? fetchByRefIds,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FetchByRefIds value)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements GoalsManagerEvent {
  const factory _Create(final GoalEntity entity) = _$CreateImpl;

  GoalEntity get entity;

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoalEntity entity});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$GoalsManagerEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UpdateImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as GoalEntity,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.entity);

  @override
  final GoalEntity entity;

  @override
  String toString() {
    return 'GoalsManagerEvent.update(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> taskIds, List<String> subTaskIds)
        started,
    required TResult Function(GoalEntity entity) create,
    required TResult Function(GoalEntity entity) update,
    required TResult Function(String id) delete,
    required TResult Function(List<String> refIds) fetchByRefIds,
  }) {
    return update(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult? Function(GoalEntity entity)? create,
    TResult? Function(GoalEntity entity)? update,
    TResult? Function(String id)? delete,
    TResult? Function(List<String> refIds)? fetchByRefIds,
  }) {
    return update?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult Function(GoalEntity entity)? create,
    TResult Function(GoalEntity entity)? update,
    TResult Function(String id)? delete,
    TResult Function(List<String> refIds)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FetchByRefIds value) fetchByRefIds,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FetchByRefIds value)? fetchByRefIds,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FetchByRefIds value)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements GoalsManagerEvent {
  const factory _Update(final GoalEntity entity) = _$UpdateImpl;

  GoalEntity get entity;

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$GoalsManagerEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'GoalsManagerEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> taskIds, List<String> subTaskIds)
        started,
    required TResult Function(GoalEntity entity) create,
    required TResult Function(GoalEntity entity) update,
    required TResult Function(String id) delete,
    required TResult Function(List<String> refIds) fetchByRefIds,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult? Function(GoalEntity entity)? create,
    TResult? Function(GoalEntity entity)? update,
    TResult? Function(String id)? delete,
    TResult? Function(List<String> refIds)? fetchByRefIds,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult Function(GoalEntity entity)? create,
    TResult Function(GoalEntity entity)? update,
    TResult Function(String id)? delete,
    TResult Function(List<String> refIds)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FetchByRefIds value) fetchByRefIds,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FetchByRefIds value)? fetchByRefIds,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FetchByRefIds value)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements GoalsManagerEvent {
  const factory _Delete(final String id) = _$DeleteImpl;

  String get id;

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchByRefIdsImplCopyWith<$Res> {
  factory _$$FetchByRefIdsImplCopyWith(
          _$FetchByRefIdsImpl value, $Res Function(_$FetchByRefIdsImpl) then) =
      __$$FetchByRefIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> refIds});
}

/// @nodoc
class __$$FetchByRefIdsImplCopyWithImpl<$Res>
    extends _$GoalsManagerEventCopyWithImpl<$Res, _$FetchByRefIdsImpl>
    implements _$$FetchByRefIdsImplCopyWith<$Res> {
  __$$FetchByRefIdsImplCopyWithImpl(
      _$FetchByRefIdsImpl _value, $Res Function(_$FetchByRefIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refIds = null,
  }) {
    return _then(_$FetchByRefIdsImpl(
      null == refIds
          ? _value._refIds
          : refIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FetchByRefIdsImpl implements _FetchByRefIds {
  const _$FetchByRefIdsImpl(final List<String> refIds) : _refIds = refIds;

  final List<String> _refIds;
  @override
  List<String> get refIds {
    if (_refIds is EqualUnmodifiableListView) return _refIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_refIds);
  }

  @override
  String toString() {
    return 'GoalsManagerEvent.fetchByRefIds(refIds: $refIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchByRefIdsImpl &&
            const DeepCollectionEquality().equals(other._refIds, _refIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_refIds));

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchByRefIdsImplCopyWith<_$FetchByRefIdsImpl> get copyWith =>
      __$$FetchByRefIdsImplCopyWithImpl<_$FetchByRefIdsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> taskIds, List<String> subTaskIds)
        started,
    required TResult Function(GoalEntity entity) create,
    required TResult Function(GoalEntity entity) update,
    required TResult Function(String id) delete,
    required TResult Function(List<String> refIds) fetchByRefIds,
  }) {
    return fetchByRefIds(refIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult? Function(GoalEntity entity)? create,
    TResult? Function(GoalEntity entity)? update,
    TResult? Function(String id)? delete,
    TResult? Function(List<String> refIds)? fetchByRefIds,
  }) {
    return fetchByRefIds?.call(refIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> taskIds, List<String> subTaskIds)? started,
    TResult Function(GoalEntity entity)? create,
    TResult Function(GoalEntity entity)? update,
    TResult Function(String id)? delete,
    TResult Function(List<String> refIds)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (fetchByRefIds != null) {
      return fetchByRefIds(refIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FetchByRefIds value) fetchByRefIds,
  }) {
    return fetchByRefIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FetchByRefIds value)? fetchByRefIds,
  }) {
    return fetchByRefIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FetchByRefIds value)? fetchByRefIds,
    required TResult orElse(),
  }) {
    if (fetchByRefIds != null) {
      return fetchByRefIds(this);
    }
    return orElse();
  }
}

abstract class _FetchByRefIds implements GoalsManagerEvent {
  const factory _FetchByRefIds(final List<String> refIds) = _$FetchByRefIdsImpl;

  List<String> get refIds;

  /// Create a copy of GoalsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchByRefIdsImplCopyWith<_$FetchByRefIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoalsManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsManagerStateCopyWith<$Res> {
  factory $GoalsManagerStateCopyWith(
          GoalsManagerState value, $Res Function(GoalsManagerState) then) =
      _$GoalsManagerStateCopyWithImpl<$Res, GoalsManagerState>;
}

/// @nodoc
class _$GoalsManagerStateCopyWithImpl<$Res, $Val extends GoalsManagerState>
    implements $GoalsManagerStateCopyWith<$Res> {
  _$GoalsManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GoalsManagerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GoalsManagerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GoalsManagerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GoalsManagerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GoalsManagerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GoalsManagerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$GoalsManagerStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GoalsManagerState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GoalsManagerState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
          _$CreatedImpl value, $Res Function(_$CreatedImpl) then) =
      __$$CreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoalEntity cat});
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$GoalsManagerStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cat = null,
  }) {
    return _then(_$CreatedImpl(
      null == cat
          ? _value.cat
          : cat // ignore: cast_nullable_to_non_nullable
              as GoalEntity,
    ));
  }
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.cat);

  @override
  final GoalEntity cat;

  @override
  String toString() {
    return 'GoalsManagerState.created(cat: $cat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedImpl &&
            (identical(other.cat, cat) || other.cat == cat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cat);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      __$$CreatedImplCopyWithImpl<_$CreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) {
    return created(cat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) {
    return created?.call(cat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(cat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements GoalsManagerState {
  const factory _Created(final GoalEntity cat) = _$CreatedImpl;

  GoalEntity get cat;

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$GoalsManagerStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdatedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'GoalsManagerState.updated(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) {
    return updated(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) {
    return updated?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements GoalsManagerState {
  const factory _Updated(final String id) = _$UpdatedImpl;

  String get id;

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$GoalsManagerStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeletedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'GoalsManagerState.deleted(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) {
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) {
    return deleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements GoalsManagerState {
  const factory _Deleted(final String id) = _$DeletedImpl;

  String get id;

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedByRefIdsImplCopyWith<$Res> {
  factory _$$FetchedByRefIdsImplCopyWith(_$FetchedByRefIdsImpl value,
          $Res Function(_$FetchedByRefIdsImpl) then) =
      __$$FetchedByRefIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GoalEntity> goals});
}

/// @nodoc
class __$$FetchedByRefIdsImplCopyWithImpl<$Res>
    extends _$GoalsManagerStateCopyWithImpl<$Res, _$FetchedByRefIdsImpl>
    implements _$$FetchedByRefIdsImplCopyWith<$Res> {
  __$$FetchedByRefIdsImplCopyWithImpl(
      _$FetchedByRefIdsImpl _value, $Res Function(_$FetchedByRefIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
  }) {
    return _then(_$FetchedByRefIdsImpl(
      null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<GoalEntity>,
    ));
  }
}

/// @nodoc

class _$FetchedByRefIdsImpl implements _FetchedByRefIds {
  const _$FetchedByRefIdsImpl(final List<GoalEntity> goals) : _goals = goals;

  final List<GoalEntity> _goals;
  @override
  List<GoalEntity> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  String toString() {
    return 'GoalsManagerState.fetchedByRefIds(goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedByRefIdsImpl &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_goals));

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedByRefIdsImplCopyWith<_$FetchedByRefIdsImpl> get copyWith =>
      __$$FetchedByRefIdsImplCopyWithImpl<_$FetchedByRefIdsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(GoalEntity cat) created,
    required TResult Function(String id) updated,
    required TResult Function(String id) deleted,
    required TResult Function(List<GoalEntity> goals) fetchedByRefIds,
  }) {
    return fetchedByRefIds(goals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(GoalEntity cat)? created,
    TResult? Function(String id)? updated,
    TResult? Function(String id)? deleted,
    TResult? Function(List<GoalEntity> goals)? fetchedByRefIds,
  }) {
    return fetchedByRefIds?.call(goals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(GoalEntity cat)? created,
    TResult Function(String id)? updated,
    TResult Function(String id)? deleted,
    TResult Function(List<GoalEntity> goals)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (fetchedByRefIds != null) {
      return fetchedByRefIds(goals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_FetchedByRefIds value) fetchedByRefIds,
  }) {
    return fetchedByRefIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_FetchedByRefIds value)? fetchedByRefIds,
  }) {
    return fetchedByRefIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_FetchedByRefIds value)? fetchedByRefIds,
    required TResult orElse(),
  }) {
    if (fetchedByRefIds != null) {
      return fetchedByRefIds(this);
    }
    return orElse();
  }
}

abstract class _FetchedByRefIds implements GoalsManagerState {
  const factory _FetchedByRefIds(final List<GoalEntity> goals) =
      _$FetchedByRefIdsImpl;

  List<GoalEntity> get goals;

  /// Create a copy of GoalsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedByRefIdsImplCopyWith<_$FetchedByRefIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
