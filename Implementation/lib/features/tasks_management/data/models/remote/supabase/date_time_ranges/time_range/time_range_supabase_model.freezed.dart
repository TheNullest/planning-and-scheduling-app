// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_range_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeRangeSupabaseModel _$TimeRangeSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _TimeRangeSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TimeRangeSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  String get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  String get end => throw _privateConstructorUsedError;

  /// Serializes this TimeRangeSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeRangeSupabaseModelCopyWith<TimeRangeSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeRangeSupabaseModelCopyWith<$Res> {
  factory $TimeRangeSupabaseModelCopyWith(TimeRangeSupabaseModel value,
          $Res Function(TimeRangeSupabaseModel) then) =
      _$TimeRangeSupabaseModelCopyWithImpl<$Res, TimeRangeSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'start') String start,
      @JsonKey(name: 'end') String end});
}

/// @nodoc
class _$TimeRangeSupabaseModelCopyWithImpl<$Res,
        $Val extends TimeRangeSupabaseModel>
    implements $TimeRangeSupabaseModelCopyWith<$Res> {
  _$TimeRangeSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeRangeSupabaseModelImplCopyWith<$Res>
    implements $TimeRangeSupabaseModelCopyWith<$Res> {
  factory _$$TimeRangeSupabaseModelImplCopyWith(
          _$TimeRangeSupabaseModelImpl value,
          $Res Function(_$TimeRangeSupabaseModelImpl) then) =
      __$$TimeRangeSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'start') String start,
      @JsonKey(name: 'end') String end});
}

/// @nodoc
class __$$TimeRangeSupabaseModelImplCopyWithImpl<$Res>
    extends _$TimeRangeSupabaseModelCopyWithImpl<$Res,
        _$TimeRangeSupabaseModelImpl>
    implements _$$TimeRangeSupabaseModelImplCopyWith<$Res> {
  __$$TimeRangeSupabaseModelImplCopyWithImpl(
      _$TimeRangeSupabaseModelImpl _value,
      $Res Function(_$TimeRangeSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$TimeRangeSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeRangeSupabaseModelImpl implements _TimeRangeSupabaseModel {
  const _$TimeRangeSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'start') required this.start,
      @JsonKey(name: 'end') required this.end});

  factory _$TimeRangeSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeRangeSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'start')
  final String start;
  @override
  @JsonKey(name: 'end')
  final String end;

  @override
  String toString() {
    return 'TimeRangeSupabaseModel(id: $id, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeRangeSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, start, end);

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeRangeSupabaseModelImplCopyWith<_$TimeRangeSupabaseModelImpl>
      get copyWith => __$$TimeRangeSupabaseModelImplCopyWithImpl<
          _$TimeRangeSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeRangeSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TimeRangeSupabaseModel implements TimeRangeSupabaseModel {
  const factory _TimeRangeSupabaseModel(
          {required final String id,
          @JsonKey(name: 'start') required final String start,
          @JsonKey(name: 'end') required final String end}) =
      _$TimeRangeSupabaseModelImpl;

  factory _TimeRangeSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TimeRangeSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'start')
  String get start;
  @override
  @JsonKey(name: 'end')
  String get end;

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeRangeSupabaseModelImplCopyWith<_$TimeRangeSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
