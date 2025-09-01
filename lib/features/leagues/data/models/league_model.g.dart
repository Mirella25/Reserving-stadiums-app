// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeagueModelImpl _$$LeagueModelImplFromJson(Map<String, dynamic> json) =>
    _$LeagueModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      price: json['price'] as String,
      prize: json['prize'] as String,
      status: json['status'] as String,
      createdBy: (json['created_by'] as num?)?.toInt(),
      stadium: json['stadium'] == null
          ? null
          : StadiumModel.fromJson(json['stadium'] as Map<String, dynamic>),
      sportName: json['sport_name'] as String,
    );

Map<String, dynamic> _$$LeagueModelImplToJson(_$LeagueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'price': instance.price,
      'prize': instance.prize,
      'status': instance.status,
      'created_by': instance.createdBy,
      'stadium': instance.stadium,
      'sport_name': instance.sportName,
    };
