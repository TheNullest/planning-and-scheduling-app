// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_range_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DateRangeSupabaseModel _$DateRangeSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _DateRangeSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$DateRangeSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  DateTime? get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  DateTime? get end => throw _privateConstructorUsedError;

  /// Serializes this DateRangeSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateRangeSupabaseModelCopyWith<DateRangeSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRangeSupabaseModelCopyWith<$Res> {
  factory $DateRangeSupabaseModelCopyWith(DateRangeSupabaseModel value,
          $Res Function(DateRangeSupabaseModel) then) =
      _$DateRangeSupabaseModelCopyWithImpl<$Res, DateRangeSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'start') DateTime? start,
      @JsonKey(name: 'end') DateTime? end});
}

/// @nodoc
class _$DateRangeSupabaseModelCopyWithImpl<$Res,
        $Val extends DateRangeSupabaseModel>
    implements $DateRangeSupabaseModelCopyWith<$Res> {
  _$DateRangeSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateRangeSupabaseModelImplCopyWith<$Res>
    implements $DateRangeSupabaseModelCopyWith<$Res> {
  factory _$$DateRangeSupabaseModelImplCopyWith(
          _$DateRangeSupabaseModelImpl value,
          $Res Function(_$DateRangeSupabaseModelImpl) then) =
      __$$DateRangeSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'start') DateTime? start,
      @JsonKey(name: 'end') DateTime? end});
}

/// @nodoc
class __$$DateRangeSupabaseModelImplCopyWithImpl<$Res>
    extends _$DateRangeSupabaseModelCopyWithImpl<$Res,
        _$DateRangeSupabaseModelImpl>
    implements _$$DateRangeSupabaseModelImplCopyWith<$Res> {
  __$$DateRangeSupabaseModelImplCopyWithImpl(
      _$DateRangeSupabaseModelImpl _value,
      $Res Function(_$DateRangeSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$DateRangeSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateRangeSupabaseModelImpl implements _DateRangeSupabaseModel {
  const _$DateRangeSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'start') this.start,
      @JsonKey(name: 'end') this.end});

  factory _$DateRangeSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateRangeSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'start')
  final DateTime? start;
  @override
  @JsonKey(name: 'end')
  final DateTime? end;

  @override
  String toString() {
    return 'DateRangeSupabaseModel(id: $id, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, start, end);

  /// Create a copy of DateRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRangeSupabaseModelImplCopyWith<_$DateRangeSupabaseModelImpl>
      get copyWith => __$$DateRangeSupabaseModelImplCopyWithImpl<
          _$DateRangeSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateRangeSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _DateRangeSupabaseModel implements DateRangeSupabaseModel {
  const factory _DateRangeSupabaseModel(
          {required final String id,
          @JsonKey(name: 'start') final DateTime? start,
          @JsonKey(name: 'end') final DateTime? end}) =
      _$DateRangeSupabaseModelImpl;

  factory _DateRangeSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$DateRangeSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'start')
  DateTime? get start;
  @override
  @JsonKey(name: 'end')
  DateTime? get end;

  /// Create a copy of DateRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateRangeSupabaseModelImplCopyWith<_$DateRangeSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
