// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_league_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateLeagueRequestModelImpl _$$CreateLeagueRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateLeagueRequestModelImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      prize: json['prize'] as String,
      status: json['status'] as String,
      description: json['description'] as String,
      stadiumId: (json['stadium_id'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateLeagueRequestModelImplToJson(
        _$CreateLeagueRequestModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'prize': instance.prize,
      'status': instance.status,
      'description': instance.description,
      'stadium_id': instance.stadiumId,
    };
