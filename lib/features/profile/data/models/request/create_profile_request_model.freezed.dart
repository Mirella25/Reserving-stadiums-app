// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProfileRequestModel _$CreateProfileRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateProfileRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateProfileRequestModel {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get mine => throw _privateConstructorUsedError;
  String? get sport => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'emergency_contact_information')
  String? get emergencyContactInformation => throw _privateConstructorUsedError;
  String? get injuries => throw _privateConstructorUsedError;
  @JsonKey(name: 'positions_played')
  String? get positionsPlayed => throw _privateConstructorUsedError;
  @JsonKey(name: 'notable_achievements')
  String? get notableAchievements => throw _privateConstructorUsedError;
  @JsonKey(name: 'years_of_experience')
  String? get yearsOfExperience => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_teams')
  String? get previousTeams => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_notes')
  String? get extraNotes => throw _privateConstructorUsedError;

  /// Serializes this CreateProfileRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateProfileRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProfileRequestModelCopyWith<CreateProfileRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileRequestModelCopyWith<$Res> {
  factory $CreateProfileRequestModelCopyWith(CreateProfileRequestModel value,
          $Res Function(CreateProfileRequestModel) then) =
      _$CreateProfileRequestModelCopyWithImpl<$Res, CreateProfileRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? birthdate,
      String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? gender,
      String? mine,
      String? sport,
      String? height,
      String? weight,
      @JsonKey(name: 'emergency_contact_information')
      String? emergencyContactInformation,
      String? injuries,
      @JsonKey(name: 'positions_played') String? positionsPlayed,
      @JsonKey(name: 'notable_achievements') String? notableAchievements,
      @JsonKey(name: 'years_of_experience') String? yearsOfExperience,
      @JsonKey(name: 'previous_teams') String? previousTeams,
      @JsonKey(name: 'extra_notes') String? extraNotes});
}

/// @nodoc
class _$CreateProfileRequestModelCopyWithImpl<$Res,
        $Val extends CreateProfileRequestModel>
    implements $CreateProfileRequestModelCopyWith<$Res> {
  _$CreateProfileRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProfileRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? mine = freezed,
    Object? sport = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? emergencyContactInformation = freezed,
    Object? injuries = freezed,
    Object? positionsPlayed = freezed,
    Object? notableAchievements = freezed,
    Object? yearsOfExperience = freezed,
    Object? previousTeams = freezed,
    Object? extraNotes = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      mine: freezed == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as String?,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
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
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as String?,
      previousTeams: freezed == previousTeams
          ? _value.previousTeams
          : previousTeams // ignore: cast_nullable_to_non_nullable
              as String?,
      extraNotes: freezed == extraNotes
          ? _value.extraNotes
          : extraNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProfileRequestModelImplCopyWith<$Res>
    implements $CreateProfileRequestModelCopyWith<$Res> {
  factory _$$CreateProfileRequestModelImplCopyWith(
          _$CreateProfileRequestModelImpl value,
          $Res Function(_$CreateProfileRequestModelImpl) then) =
      __$$CreateProfileRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? birthdate,
      String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? gender,
      String? mine,
      String? sport,
      String? height,
      String? weight,
      @JsonKey(name: 'emergency_contact_information')
      String? emergencyContactInformation,
      String? injuries,
      @JsonKey(name: 'positions_played') String? positionsPlayed,
      @JsonKey(name: 'notable_achievements') String? notableAchievements,
      @JsonKey(name: 'years_of_experience') String? yearsOfExperience,
      @JsonKey(name: 'previous_teams') String? previousTeams,
      @JsonKey(name: 'extra_notes') String? extraNotes});
}

/// @nodoc
class __$$CreateProfileRequestModelImplCopyWithImpl<$Res>
    extends _$CreateProfileRequestModelCopyWithImpl<$Res,
        _$CreateProfileRequestModelImpl>
    implements _$$CreateProfileRequestModelImplCopyWith<$Res> {
  __$$CreateProfileRequestModelImplCopyWithImpl(
      _$CreateProfileRequestModelImpl _value,
      $Res Function(_$CreateProfileRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProfileRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? mine = freezed,
    Object? sport = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? emergencyContactInformation = freezed,
    Object? injuries = freezed,
    Object? positionsPlayed = freezed,
    Object? notableAchievements = freezed,
    Object? yearsOfExperience = freezed,
    Object? previousTeams = freezed,
    Object? extraNotes = freezed,
  }) {
    return _then(_$CreateProfileRequestModelImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      mine: freezed == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as String?,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
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
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as String?,
      previousTeams: freezed == previousTeams
          ? _value.previousTeams
          : previousTeams // ignore: cast_nullable_to_non_nullable
              as String?,
      extraNotes: freezed == extraNotes
          ? _value.extraNotes
          : extraNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProfileRequestModelImpl implements _CreateProfileRequestModel {
  const _$CreateProfileRequestModelImpl(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.birthdate,
      this.address,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.gender,
      this.mine,
      this.sport,
      this.height,
      this.weight,
      @JsonKey(name: 'emergency_contact_information')
      this.emergencyContactInformation,
      this.injuries,
      @JsonKey(name: 'positions_played') this.positionsPlayed,
      @JsonKey(name: 'notable_achievements') this.notableAchievements,
      @JsonKey(name: 'years_of_experience') this.yearsOfExperience,
      @JsonKey(name: 'previous_teams') this.previousTeams,
      @JsonKey(name: 'extra_notes') this.extraNotes});

  factory _$CreateProfileRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProfileRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? birthdate;
  @override
  final String? address;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? gender;
  @override
  final String? mine;
  @override
  final String? sport;
  @override
  final String? height;
  @override
  final String? weight;
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
  @JsonKey(name: 'years_of_experience')
  final String? yearsOfExperience;
  @override
  @JsonKey(name: 'previous_teams')
  final String? previousTeams;
  @override
  @JsonKey(name: 'extra_notes')
  final String? extraNotes;

  @override
  String toString() {
    return 'CreateProfileRequestModel(firstName: $firstName, lastName: $lastName, birthdate: $birthdate, address: $address, phoneNumber: $phoneNumber, gender: $gender, mine: $mine, sport: $sport, height: $height, weight: $weight, emergencyContactInformation: $emergencyContactInformation, injuries: $injuries, positionsPlayed: $positionsPlayed, notableAchievements: $notableAchievements, yearsOfExperience: $yearsOfExperience, previousTeams: $previousTeams, extraNotes: $extraNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfileRequestModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.mine, mine) || other.mine == mine) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
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
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.previousTeams, previousTeams) ||
                other.previousTeams == previousTeams) &&
            (identical(other.extraNotes, extraNotes) ||
                other.extraNotes == extraNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      birthdate,
      address,
      phoneNumber,
      gender,
      mine,
      sport,
      height,
      weight,
      emergencyContactInformation,
      injuries,
      positionsPlayed,
      notableAchievements,
      yearsOfExperience,
      previousTeams,
      extraNotes);

  /// Create a copy of CreateProfileRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfileRequestModelImplCopyWith<_$CreateProfileRequestModelImpl>
      get copyWith => __$$CreateProfileRequestModelImplCopyWithImpl<
          _$CreateProfileRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProfileRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateProfileRequestModel implements CreateProfileRequestModel {
  const factory _CreateProfileRequestModel(
      {@JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? birthdate,
      final String? address,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      final String? gender,
      final String? mine,
      final String? sport,
      final String? height,
      final String? weight,
      @JsonKey(name: 'emergency_contact_information')
      final String? emergencyContactInformation,
      final String? injuries,
      @JsonKey(name: 'positions_played') final String? positionsPlayed,
      @JsonKey(name: 'notable_achievements') final String? notableAchievements,
      @JsonKey(name: 'years_of_experience') final String? yearsOfExperience,
      @JsonKey(name: 'previous_teams') final String? previousTeams,
      @JsonKey(name: 'extra_notes')
      final String? extraNotes}) = _$CreateProfileRequestModelImpl;

  factory _CreateProfileRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateProfileRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get birthdate;
  @override
  String? get address;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get gender;
  @override
  String? get mine;
  @override
  String? get sport;
  @override
  String? get height;
  @override
  String? get weight;
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
  @JsonKey(name: 'years_of_experience')
  String? get yearsOfExperience;
  @override
  @JsonKey(name: 'previous_teams')
  String? get previousTeams;
  @override
  @JsonKey(name: 'extra_notes')
  String? get extraNotes;

  /// Create a copy of CreateProfileRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProfileRequestModelImplCopyWith<_$CreateProfileRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
