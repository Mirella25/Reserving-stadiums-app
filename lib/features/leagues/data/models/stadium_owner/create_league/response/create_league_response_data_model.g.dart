// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_league_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateLeagueResponseDataModelImpl
    _$$CreateLeagueResponseDataModelImplFromJson(Map<String, dynamic> json) =>
        _$CreateLeagueResponseDataModelImpl(
          id: (json['id'] as num).toInt(),
          name: json['name'] as String,
          price: (json['price'] as num).toDouble(),
          startDate: json['start_date'] as String,
          endDate: json['end_date'] as String,
          prize: json['prize'] as String,
          status: json['status'] as String,
          description: json['description'] as String,
          stadiumId: (json['stadium_id'] as num).toInt(),
          createdAt: json['created_at'] as String?,
          updatedAt: json['updated_at'] as String?,
          createdBy: (json['created_by'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$CreateLeagueResponseDataModelImplToJson(
        _$CreateLeagueResponseDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'prize': instance.prize,
      'status': instance.status,
      'description': instance.description,
      'stadium_id': instance.stadiumId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
    };
