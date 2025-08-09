import 'package:reserving_stadiums_app/core/result/result.dart';

import 'package:reserving_stadiums_app/features/stadiums/domain/repositories/player/stadiums_repository.dart';

import '../../../domain/entities/player/stadium_entity.dart';
import '../../datasources/player/stadiums_remote_datasource.dart';


class StadiumsRepositoryImpl extends StadiumsRepository {
  final StadiumsRemoteDatasource remoteDatasource;

  StadiumsRepositoryImpl(this.remoteDatasource);

  @override
  Future<Result<List<StadiumEntity>>> getAllStadiums() async {
    return await remoteDatasource.getAllStadiums();
  }
}

