// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stadium_requests_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStadiumRequestsResponseImpl _$$GetStadiumRequestsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStadiumRequestsResponseImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data:
          RequestsDataContainer.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetStadiumRequestsResponseImplToJson(
        _$GetStadiumRequestsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$RequestsDataContainerImpl _$$RequestsDataContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestsDataContainerImpl(
      asks: (json['Asks'] as List<dynamic>)
          .map((e) => GetStadiumRequestsDataResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestsDataContainerImplToJson(
        _$RequestsDataContainerImpl instance) =>
    <String, dynamic>{
      'Asks': instance.asks,
    };
