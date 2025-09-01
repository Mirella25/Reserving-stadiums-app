import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/network/api_client.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/teams/domain/entities/team_entity.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/request/create_team_request.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/team_model.dart';

import '../../../auth/data/datasources/auth_local_datasource.dart';
import '../../domain/entities/team_details_entity.dart';
import '../models/request/update_team_request.dart';
import '../models/team_details_model.dart';

abstract class TeamRemoteDatasource {
  Future<Result<TeamEntity>> createTeam(CreateTeamRequest req);
  Future<Result<List<TeamEntity>>> getAllTeams();
  Future<Result<TeamDetailsEntity>> getTeamDetails(int id);
  Future<Result<TeamEntity>> updateTeam(int id,UpdateTeamRequest req);
  @override
  Future<Result<bool>> deleteTeam(int id) ;

}
Map<String, dynamic> _clean(Map<String, dynamic> m) {
  m.removeWhere((k, v) => v == null || (v is String && v.trim().isEmpty));
  return m;
}
class TeamRemoteDatasourceImpl implements TeamRemoteDatasource {
  final DioClient dioClient;
  final AuthLocalDataSource local;
  TeamRemoteDatasourceImpl({required this.dioClient, required this.local});

  @override
  Future<Result<TeamEntity>> createTeam(CreateTeamRequest req) async {
    // نبني FormData دايمًا (بصير JSON تلقائيًا إذا بدون ملف)
    final form = FormData.fromMap({
      'name': req.name,
      'captin_id': req.captainId,
      'sport_id': req.sportId,
      if (req.logoPath != null && req.logoPath!.isNotEmpty)
        'logo': await MultipartFile.fromFile(
          req.logoPath!,
          filename: req.logoPath!.split('/').last,
        ),
    });

    final token = await local.getCachedToken();

    return dioClient.callApi<TeamEntity>(
      endpoint: "/teams",
      method: "POST",
      data: form,                     // ✅ يمرّ كـ multipart عند وجود ملف
      requiresAuth: true,
      token: token,                   // ✅ مهم
      fromJson: (json) {
        final data = Map<String, dynamic>.from(json['data'] as Map);
        return TeamModel.fromJson(data).toEntity();
      },
    );
  }


  Future<Result<List<TeamEntity>>> getAllTeams() async {
    return dioClient.callApi<List<TeamEntity>>(
      endpoint: "/teams",
      method: "GET",
      requiresAuth: true,
      token: await local.getCachedToken(),
      fromJson: (json) {
        final list = (json['data'] as List)
            .map((e) => TeamModel.fromJson(Map<String, dynamic>.from(e)).toEntity())
            .toList();
        return list; // ✅ List<TeamEntity>
      },
    );
  }

  @override
  Future<Result<TeamDetailsEntity>> getTeamDetails(int id) async {
    return dioClient.callApi<TeamDetailsEntity>(endpoint: "/teams/$id",
    method: 'GET',
    requiresAuth: true,
    token: await local.getCachedToken(),
    fromJson: (json) => TeamDetailsModel
        .fromJson(Map<String, dynamic>.from(json['data'] as Map))
        .toEntity(),
    );

  }

  @override
  Future<Result<TeamEntity>> updateTeam(int id, UpdateTeamRequest req) async {
    return dioClient.callApi<TeamEntity>(
      endpoint: 'teams/$id/update',
      method: 'POST',
      data: _clean(req.toJson()),   // نبعت بس القيم اللي تغيّرت
      requiresAuth: true,
      token: await local.getCachedToken(),
      fromJson: (json) {
        final d = json['data'] as Map<String, dynamic>? ?? {};
        return TeamEntity(
          id: d['id'] as int,
          name: d['name'] as String? ?? '',
          logoUrl: d['logo_url'] as String?,
          sportId: d['sport_id'] as int?,
          captainId: d['captin_id'] as int?,
        );
      },
    );
  }

  @override
  Future<Result<bool>> deleteTeam(int id) async {
    return dioClient.callApi<bool>(
      endpoint: 'teams/$id',
      method: 'DELETE',
      requiresAuth: true,
      token: await local.getCachedToken(),
      fromJson: (_) => true,
    );
  }

}
