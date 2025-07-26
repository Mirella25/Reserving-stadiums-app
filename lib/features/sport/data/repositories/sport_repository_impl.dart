// lib/features/stadium/data/repositories/sport_repository_impl.dart
import 'package:reserving_stadiums_app/core/result/result.dart';
import '../../domain/entities/sport_entity.dart';
import '../../domain/repositories/sport_repository.dart';
import '../datasources/sport_remote_datasource.dart';

class SportRepositoryImpl implements SportRepository {
  final SportRemoteDataSource remote;
  SportRepositoryImpl(this.remote);

  @override
  Future<Result<List<SportEntity>>> getSports() {
    return remote.getSports();
  }
}
