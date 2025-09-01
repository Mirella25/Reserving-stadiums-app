// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileUpdateRequest _$ProfileUpdateRequestFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateRequest {
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'positions_played')
  String? get positionsPlayed => throw _privateConstructorUsedError;
  String? get injuries => throw _privateConstructorUsedError;
  @JsonKey(name: 'years_of_experience')
  int? get yearsOfExperience => throw _privateConstructorUsedError;

  /// Serializes this ProfileUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileUpdateRequestCopyWith<ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateRequestCopyWith<$Res> {
  factory $ProfileUpdateRequestCopyWith(ProfileUpdateRequest value,
          $Res Function(ProfileUpdateRequest) then) =
      _$ProfileUpdateRequestCopyWithImpl<$Res, ProfileUpdateRequest>;
  @useResult
  $Res call(
      {String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      int? height,
      int? weight,
      @JsonKey(name: 'positions_played') String? positionsPlayed,
      String? injuries,
      @JsonKey(name: 'years_of_experience') int? yearsOfExperience});
}

/// @nodoc
class _$ProfileUpdateRequestCopyWithImpl<$Res,
        $Val extends ProfileUpdateRequest>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  _$ProfileUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? positionsPlayed = freezed,
    Object? injuries = freezed,
    Object? yearsOfExperience = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      positionsPlayed: freezed == positionsPlayed
          ? _value.positionsPlayed
          : positionsPlayed // ignore: cast_nullable_to_non_nullable
              as String?,
      injuries: freezed == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileUpdateRequestImplCopyWith<$Res>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  factory _$$ProfileUpdateRequestImplCopyWith(_$ProfileUpdateRequestImpl value,
          $Res Function(_$ProfileUpdateRequestImpl) then) =
      __$$ProfileUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      int? height,
      int? weight,
      @JsonKey(name: 'positions_played') String? positionsPlayed,
      String? injuries,
      @JsonKey(name: 'years_of_experience') int? yearsOfExperience});
}

/// @nodoc
class __$$ProfileUpdateRequestImplCopyWithImpl<$Res>
    extends _$ProfileUpdateRequestCopyWithImpl<$Res, _$ProfileUpdateRequestImpl>
    implements _$$ProfileUpdateRequestImplCopyWith<$Res> {
  __$$ProfileUpdateRequestImplCopyWithImpl(_$ProfileUpdateRequestImpl _value,
      $Res Function(_$ProfileUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? positionsPlayed = freezed,
    Object? injuries = freezed,
    Object? yearsOfExperience = freezed,
  }) {
    return _then(_$ProfileUpdateRequestImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      positionsPlayed: freezed == positionsPlayed
          ? _value.positionsPlayed
          : positionsPlayed // ignore: cast_nullable_to_non_nullable
              as String?,
      injuries: freezed == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ProfileUpdateRequestImpl implements _ProfileUpdateRequest {
  const _$ProfileUpdateRequestImpl(
      {this.address,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.height,
      this.weight,
      @JsonKey(name: 'positions_played') this.positionsPlayed,
      this.injuries,
      @JsonKey(name: 'years_of_experience') this.yearsOfExperience});

  factory _$ProfileUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileUpdateRequestImplFromJson(json);

  @override
  final String? address;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final int? height;
  @override
  final int? weight;
  @override
  @JsonKey(name: 'positions_played')
  final String? positionsPlayed;
  @override
  final String? injuries;
  @override
  @JsonKey(name: 'years_of_experience')
  final int? yearsOfExperience;

  @override
  String toString() {
    return 'ProfileUpdateRequest(address: $address, phoneNumber: $phoneNumber, height: $height, weight: $weight, positionsPlayed: $positionsPlayed, injuries: $injuries, yearsOfExperience: $yearsOfExperience)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateRequestImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.positionsPlayed, positionsPlayed) ||
                other.positionsPlayed == positionsPlayed) &&
            (identical(other.injuries, injuries) ||
                other.injuries == injuries) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, phoneNumber, height,
      weight, positionsPlayed, injuries, yearsOfExperience);

  /// Create a copy of ProfileUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateRequestImplCopyWith<_$ProfileUpdateRequestImpl>
      get copyWith =>
          __$$ProfileUpdateRequestImplCopyWithImpl<_$ProfileUpdateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateRequest implements ProfileUpdateRequest {
  const factory _ProfileUpdateRequest(
          {final String? address,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          final int? height,
          final int? weight,
          @JsonKey(name: 'positions_played') final String? positionsPlayed,
          final String? injuries,
          @JsonKey(name: 'years_of_experience') final int? yearsOfExperience}) =
      _$ProfileUpdateRequestImpl;

  factory _ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$ProfileUpdateRequestImpl.fromJson;

  @override
  String? get address;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  int? get height;
  @override
  int? get weight;
  @override
  @JsonKey(name: 'positions_played')
  String? get positionsPlayed;
  @override
  String? get injuries;
  @override
  @JsonKey(name: 'years_of_experience')
  int? get yearsOfExperience;

  /// Create a copy of ProfileUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUpdateRequestImplCopyWith<_$ProfileUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
