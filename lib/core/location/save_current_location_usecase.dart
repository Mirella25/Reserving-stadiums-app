import 'package:geolocator/geolocator.dart';
import 'location_local_datasource.dart';
import 'location_service.dart';
import 'location_snapshot.dart';

class SaveCurrentLocationUseCase {
  final LocationService service;
  final LocationLocalDataSource local;

  SaveCurrentLocationUseCase({
    required this.service,
    required this.local,
  });

  Future<LocationSnapshot> call() async {
    final Position p = await service.getCurrentPosition();
    final snap = LocationSnapshot(
      lat: p.latitude,
      lng: p.longitude,
      accuracy: p.accuracy,
      capturedAt: DateTime.now(),
    );
    await local.save(snap);
    return snap;
  }
}
