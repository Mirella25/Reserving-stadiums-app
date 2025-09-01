import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/network/api_client.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/league_invitation_model.dart';

import '../../domain/entities/league_entity.dart';
import '../../domain/entities/league_invitation_entity.dart';
import '../../domain/entities/league_team_entity.dart';
import '../models/league_model.dart';
import '../models/league_team_model.dart';
import '../models/leagues_response_model.dart';

abstract class LeaguesRemoteDataSource {
  Future<Result<List<LeagueEntity>>> getAllLeagues();
  Future<Result<LeagueInvitationEntity>> requestJoinLeague({
    required int teamId,
    required int leagueId,
    required bool isTeam,
  });

  Future<Result<List<LeagueTeamEntity>>> fetchLeagueTeams(int leagueId);
}

class LeaguesRemoteDataSourceImpl implements LeaguesRemoteDataSource {
  final DioClient dioClient;
  final AuthLocalDataSource local;

  LeaguesRemoteDataSourceImpl({
    required this.dioClient,
    required this.local,
  });

  @override
  Future<Result<List<LeagueEntity>>> getAllLeagues() async {
    try {
      return await dioClient.callApi<List<LeagueEntity>>(
        endpoint: 'leagues',
        method: 'GET',
        // إذا الروت محمي غيّرها لـ true
        requiresAuth: true,
        token: await local.getCachedToken(),
        fromJson: (json) {
          final resp = LeaguesResponseModel.fromJson(json);
          final list = resp.data.map((m) => m.toEntity()).toList();
          return list;
        },
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return ConnectionError<List<LeagueEntity>>();
      }
      return Error<List<LeagueEntity>>(e: e);
    } catch (e) {
      return Error<List<LeagueEntity>>(e: e);
    }
  }

  @override
  Future<Result<LeagueInvitationEntity>> requestJoinLeague(
      {required int teamId, required int leagueId, required bool
      isTeam}) async {
    try {
      return await dioClient.callApi(
        endpoint: "team-ownerinv",
        method: 'POST',
        requiresAuth: true,
        data: {
          "team_id": teamId,
          "league_id": leagueId,
          "is_team": isTeam
        },
        token: await local.getCachedToken(),
        fromJson: (json) {
          final data = json['data'] as Map<String, dynamic>;
          return LeagueInvitationModel.fromJson(data).toEntity();
        },
      );
    }
    catch (e) {
      return Error<LeagueInvitationEntity>(e: e);
    }
  }

  @override
  Future<Result<List<LeagueTeamEntity>>> fetchLeagueTeams(int leagueId) async {
    final res = await dioClient.callApi<List<LeagueTeamModel>>(
      endpoint: 'leagues/$leagueId/teams',
      method: 'GET',
      // ملاحظة: callApi يمرّر كامل الـ JSON، فمنقرأ منه 'data' كـ List
      fromJson: (json) {
        final list = (json['data'] as List<dynamic>? ?? [])
            .map((e) => LeagueTeamModel.fromJson(e as Map<String, dynamic>))
            .toList();
        return list;
      },
      requiresAuth: true,
      token: await local.getCachedToken()
    );

    // تحويل Result<List<LeagueTeamModel>> → Result<List<LeagueTeamEntity>>
    if (res is Success<List<LeagueTeamModel>>) {
      final entities = res.data.map((m) => m.toEntity()).toList();
      return Success<List<LeagueTeamEntity>>(data: entities);
    } else if (res is ConnectionError<List<LeagueTeamModel>>) {
      return ConnectionError<List<LeagueTeamEntity>>();
    } else if (res is Error<List<LeagueTeamModel>>) {
      return Error<List<LeagueTeamEntity>>(e: res.e);
    } else {
      // fallback بحال أضفت أنواع جديدة لاحقًا
      return Error<List<LeagueTeamEntity>>(e: 'Unknown result state');
    }
  }
}
