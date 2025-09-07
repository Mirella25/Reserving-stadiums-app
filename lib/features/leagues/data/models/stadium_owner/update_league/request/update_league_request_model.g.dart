// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_league_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateLeagueRequestModelImpl _$$UpdateLeagueRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateLeagueRequestModelImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      prize: json['prize'] as String,
      status: json['status'] as String,
      description: json['description'] as String,
      stadiumId: (json['stadium_id'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateLeagueRequestModelImplToJson(
        _$UpdateLeagueRequestModelImpl instance) =>
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
