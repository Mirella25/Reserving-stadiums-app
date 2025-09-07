// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_leagues_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllLeaguesDataResponseImpl _$$GetAllLeaguesDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllLeaguesDataResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: _toDouble(json['price']),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      prize: json['prize'] as String,
      status: json['status'] as String,
      description: json['description'] as String,
      stadiumId: _toInt(json['stadium_id']),
      createdAt: _toNullableString(json['created_at']),
      updatedAt: _toNullableString(json['updated_at']),
      createdBy: _toInt(json['created_by']),
    );

Map<String, dynamic> _$$GetAllLeaguesDataResponseImplToJson(
        _$GetAllLeaguesDataResponseImpl instance) =>
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
