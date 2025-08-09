// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadium_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StadiumDetailsEvent {
  int get stadiumId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stadiumId) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stadiumId)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stadiumId)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStadiumDetails value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStadiumDetails value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStadiumDetails value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of StadiumDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StadiumDetailsEventCopyWith<StadiumDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiumDetailsEventCopyWith<$Res> {
  factory $StadiumDetailsEventCopyWith(
          StadiumDetailsEvent value, $Res Function(StadiumDetailsEvent) then) =
      _$StadiumDetailsEventCopyWithImpl<$Res, StadiumDetailsEvent>;
  @useResult
  $Res call({int stadiumId});
}

/// @nodoc
class _$StadiumDetailsEventCopyWithImpl<$Res, $Val extends StadiumDetailsEvent>
    implements $StadiumDetailsEventCopyWith<$Res> {
  _$StadiumDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StadiumDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiumId = null,
  }) {
    return _then(_value.copyWith(
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadStadiumDetailsImplCopyWith<$Res>
    implements $StadiumDetailsEventCopyWith<$Res> {
  factory _$$LoadStadiumDetailsImplCopyWith(_$LoadStadiumDetailsImpl value,
          $Res Function(_$LoadStadiumDetailsImpl) then) =
      __$$LoadStadiumDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int stadiumId});
}

/// @nodoc
class __$$LoadStadiumDetailsImplCopyWithImpl<$Res>
    extends _$StadiumDetailsEventCopyWithImpl<$Res, _$LoadStadiumDetailsImpl>
    implements _$$LoadStadiumDetailsImplCopyWith<$Res> {
  __$$LoadStadiumDetailsImplCopyWithImpl(_$LoadStadiumDetailsImpl _value,
      $Res Function(_$LoadStadiumDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StadiumDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiumId = null,
  }) {
    return _then(_$LoadStadiumDetailsImpl(
      null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadStadiumDetailsImpl implements LoadStadiumDetails {
  const _$LoadStadiumDetailsImpl(this.stadiumId);

  @override
  final int stadiumId;

  @override
  String toString() {
    return 'StadiumDetailsEvent.load(stadiumId: $stadiumId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadStadiumDetailsImpl &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stadiumId);

  /// Create a copy of StadiumDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadStadiumDetailsImplCopyWith<_$LoadStadiumDetailsImpl> get copyWith =>
      __$$LoadStadiumDetailsImplCopyWithImpl<_$LoadStadiumDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stadiumId) load,
  }) {
    return load(stadiumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stadiumId)? load,
  }) {
    return load?.call(stadiumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stadiumId)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(stadiumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStadiumDetails value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStadiumDetails value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStadiumDetails value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadStadiumDetails implements StadiumDetailsEvent {
  const factory LoadStadiumDetails(final int stadiumId) =
      _$LoadStadiumDetailsImpl;

  @override
  int get stadiumId;

  /// Create a copy of StadiumDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadStadiumDetailsImplCopyWith<_$LoadStadiumDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
