// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'national_id')
  String? get nationalId => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toIntNullable)
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toIntNullable)
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable)
  int? get yearsOfExperience => throw _privateConstructorUsedError; // ✅
  @JsonKey(name: 'emergency_contact_information')
  String? get emergencyContactInformation => throw _privateConstructorUsedError;
  String? get injuries => throw _privateConstructorUsedError;
  @JsonKey(name: 'positions_played')
  String? get positionsPlayed => throw _privateConstructorUsedError;
  @JsonKey(name: 'notable_achievements')
  String? get notableAchievements => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_teams')
  String? get previousTeams => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_notes')
  String? get extraNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAtIso => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAtIso => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? birthdate,
      String? address,
      @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
      String? phoneNumber,
      String? avatar,
      @JsonKey(name: 'national_id') String? nationalId,
      String? nationality,
      String? gender,
      @JsonKey(fromJson: _toIntNullable) int? height,
      @JsonKey(fromJson: _toIntNullable) int? weight,
      @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable)
      int? yearsOfExperience,
      @JsonKey(name: 'emergency_contact_information')
      String? emergencyContactInformation,
      String? injuries,
      @JsonKey(name: 'positions_played') String? positionsPlayed,
      @JsonKey(name: 'notable_achievements') String? notableAchievements,
      @JsonKey(name: 'previous_teams') String? previousTeams,
      @JsonKey(name: 'extra_notes') String? extraNotes,
      @JsonKey(name: 'created_at') String? createdAtIso,
      @JsonKey(name: 'updated_at') String? updatedAtIso});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthdate = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? nationalId = freezed,
    Object? nationality = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? yearsOfExperience = freezed,
    Object? emergencyContactInformation = freezed,
    Object? injuries = freezed,
    Object? positionsPlayed = freezed,
    Object? notableAchievements = freezed,
    Object? previousTeams = freezed,
    Object? extraNotes = freezed,
    Object? createdAtIso = freezed,
    Object? updatedAtIso = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalId: freezed == nationalId
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      emergencyContactInformation: freezed == emergencyContactInformation
          ? _value.emergencyContactInformation
          : emergencyContactInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      injuries: freezed == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as String?,
      positionsPlayed: freezed == positionsPlayed
          ? _value.positionsPlayed
          : positionsPlayed // ignore: cast_nullable_to_non_nullable
              as String?,
      notableAchievements: freezed == notableAchievements
          ? _value.notableAchievements
          : notableAchievements // ignore: cast_nullable_to_non_nullable
              as String?,
      previousTeams: freezed == previousTeams
          ? _value.previousTeams
          : previousTeams // ignore: cast_nullable_to_non_nullable
              as String?,
      extraNotes: freezed == extraNotes
          ? _value.extraNotes
          : extraNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAtIso: freezed == createdAtIso
          ? _value.createdAtIso
          : createdAtIso // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAtIso: freezed == updatedAtIso
          ? _value.updatedAtIso
          : updatedAtIso // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? birthdate,
      String? address,
      @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
      String? phoneNumber,
      String? avatar,
      @JsonKey(name: 'national_id') String? nationalId,
      String? nationality,
      String? gender,
      @JsonKey(fromJson: _toIntNullable) int? height,
      @JsonKey(fromJson: _toIntNullable) int? weight,
      @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable)
      int? yearsOfExperience,
      @JsonKey(name: 'emergency_contact_information')
      String? emergencyContactInformation,
      String? injuries,
      @JsonKey(name: 'positions_played') String? positionsPlayed,
      @JsonKey(name: 'notable_achievements') String? notableAchievements,
      @JsonKey(name: 'previous_teams') String? previousTeams,
      @JsonKey(name: 'extra_notes') String? extraNotes,
      @JsonKey(name: 'created_at') String? createdAtIso,
      @JsonKey(name: 'updated_at') String? updatedAtIso});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthdate = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? nationalId = freezed,
    Object? nationality = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? yearsOfExperience = freezed,
    Object? emergencyContactInformation = freezed,
    Object? injuries = freezed,
    Object? positionsPlayed = freezed,
    Object? notableAchievements = freezed,
    Object? previousTeams = freezed,
    Object? extraNotes = freezed,
    Object? createdAtIso = freezed,
    Object? updatedAtIso = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalId: freezed == nationalId
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      emergencyContactInformation: freezed == emergencyContactInformation
          ? _value.emergencyContactInformation
          : emergencyContactInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      injuries: freezed == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as String?,
      positionsPlayed: freezed == positionsPlayed
          ? _value.positionsPlayed
          : positionsPlayed // ignore: cast_nullable_to_non_nullable
              as String?,
      notableAchievements: freezed == notableAchievements
          ? _value.notableAchievements
          : notableAchievements // ignore: cast_nullable_to_non_nullable
              as String?,
      previousTeams: freezed == previousTeams
          ? _value.previousTeams
          : previousTeams // ignore: cast_nullable_to_non_nullable
              as String?,
      extraNotes: freezed == extraNotes
          ? _value.extraNotes
          : extraNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAtIso: freezed == createdAtIso
          ? _value.createdAtIso
          : createdAtIso // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAtIso: freezed == updatedAtIso
          ? _value.updatedAtIso
          : updatedAtIso // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      this.birthdate,
      this.address,
      @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
      this.phoneNumber,
      this.avatar,
      @JsonKey(name: 'national_id') this.nationalId,
      this.nationality,
      this.gender,
      @JsonKey(fromJson: _toIntNullable) this.height,
      @JsonKey(fromJson: _toIntNullable) this.weight,
      @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable)
      this.yearsOfExperience,
      @JsonKey(name: 'emergency_contact_information')
      this.emergencyContactInformation,
      this.injuries,
      @JsonKey(name: 'positions_played') this.positionsPlayed,
      @JsonKey(name: 'notable_achievements') this.notableAchievements,
      @JsonKey(name: 'previous_teams') this.previousTeams,
      @JsonKey(name: 'extra_notes') this.extraNotes,
      @JsonKey(name: 'created_at') this.createdAtIso,
      @JsonKey(name: 'updated_at') this.updatedAtIso});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String? birthdate;
  @override
  final String? address;
  @override
  @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
  final String? phoneNumber;
  @override
  final String? avatar;
  @override
  @JsonKey(name: 'national_id')
  final String? nationalId;
  @override
  final String? nationality;
  @override
  final String? gender;
  @override
  @JsonKey(fromJson: _toIntNullable)
  final int? height;
  @override
  @JsonKey(fromJson: _toIntNullable)
  final int? weight;
  @override
  @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable)
  final int? yearsOfExperience;
// ✅
  @override
  @JsonKey(name: 'emergency_contact_information')
  final String? emergencyContactInformation;
  @override
  final String? injuries;
  @override
  @JsonKey(name: 'positions_played')
  final String? positionsPlayed;
  @override
  @JsonKey(name: 'notable_achievements')
  final String? notableAchievements;
  @override
  @JsonKey(name: 'previous_teams')
  final String? previousTeams;
  @override
  @JsonKey(name: 'extra_notes')
  final String? extraNotes;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAtIso;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAtIso;

  @override
  String toString() {
    return 'ProfileModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, birthdate: $birthdate, address: $address, phoneNumber: $phoneNumber, avatar: $avatar, nationalId: $nationalId, nationality: $nationality, gender: $gender, height: $height, weight: $weight, yearsOfExperience: $yearsOfExperience, emergencyContactInformation: $emergencyContactInformation, injuries: $injuries, positionsPlayed: $positionsPlayed, notableAchievements: $notableAchievements, previousTeams: $previousTeams, extraNotes: $extraNotes, createdAtIso: $createdAtIso, updatedAtIso: $updatedAtIso)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.nationalId, nationalId) ||
                other.nationalId == nationalId) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.emergencyContactInformation,
                    emergencyContactInformation) ||
                other.emergencyContactInformation ==
                    emergencyContactInformation) &&
            (identical(other.injuries, injuries) ||
                other.injuries == injuries) &&
            (identical(other.positionsPlayed, positionsPlayed) ||
                other.positionsPlayed == positionsPlayed) &&
            (identical(other.notableAchievements, notableAchievements) ||
                other.notableAchievements == notableAchievements) &&
            (identical(other.previousTeams, previousTeams) ||
                other.previousTeams == previousTeams) &&
            (identical(other.extraNotes, extraNotes) ||
                other.extraNotes == extraNotes) &&
            (identical(other.createdAtIso, createdAtIso) ||
                other.createdAtIso == createdAtIso) &&
            (identical(other.updatedAtIso, updatedAtIso) ||
                other.updatedAtIso == updatedAtIso));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        firstName,
        lastName,
        birthdate,
        address,
        phoneNumber,
        avatar,
        nationalId,
        nationality,
        gender,
        height,
        weight,
        yearsOfExperience,
        emergencyContactInformation,
        injuries,
        positionsPlayed,
        notableAchievements,
        previousTeams,
        extraNotes,
        createdAtIso,
        updatedAtIso
      ]);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      final String? birthdate,
      final String? address,
      @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
      final String? phoneNumber,
      final String? avatar,
      @JsonKey(name: 'national_id') final String? nationalId,
      final String? nationality,
      final String? gender,
      @JsonKey(fromJson: _toIntNullable) final int? height,
      @JsonKey(fromJson: _toIntNullable) final int? weight,
      @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable)
      final int? yearsOfExperience,
      @JsonKey(name: 'emergency_contact_information')
      final String? emergencyContactInformation,
      final String? injuries,
      @JsonKey(name: 'positions_played') final String? positionsPlayed,
      @JsonKey(name: 'notable_achievements') final String? notableAchievements,
      @JsonKey(name: 'previous_teams') final String? previousTeams,
      @JsonKey(name: 'extra_notes') final String? extraNotes,
      @JsonKey(name: 'created_at') final String? createdAtIso,
      @JsonKey(name: 'updated_at')
      final String? updatedAtIso}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String? get birthdate;
  @override
  String? get address;
  @override
  @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
  String? get phoneNumber;
  @override
  String? get avatar;
  @override
  @JsonKey(name: 'national_id')
  String? get nationalId;
  @override
  String? get nationality;
  @override
  String? get gender;
  @override
  @JsonKey(fromJson: _toIntNullable)
  int? get height;
  @override
  @JsonKey(fromJson: _toIntNullable)
  int? get weight;
  @override
  @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable)
  int? get yearsOfExperience; // ✅
  @override
  @JsonKey(name: 'emergency_contact_information')
  String? get emergencyContactInformation;
  @override
  String? get injuries;
  @override
  @JsonKey(name: 'positions_played')
  String? get positionsPlayed;
  @override
  @JsonKey(name: 'notable_achievements')
  String? get notableAchievements;
  @override
  @JsonKey(name: 'previous_teams')
  String? get previousTeams;
  @override
  @JsonKey(name: 'extra_notes')
  String? get extraNotes;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAtIso;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAtIso;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
