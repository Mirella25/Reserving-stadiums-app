import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/location/location_local_datasource.dart';
import '../../../../core/location/location_service.dart';
import '../../../../core/location/save_current_location_usecase.dart';
import '../../../../core/location/location_snapshot.dart';

class SaveLocationPage extends StatefulWidget {
  const SaveLocationPage({super.key});

  @override
  State<SaveLocationPage> createState() => _SaveLocationPageState();
}

class _SaveLocationPageState extends State<SaveLocationPage> {
  LocationSnapshot? lastSnap;

  Future<void> _save() async {
    final usecase = SaveCurrentLocationUseCase(
      service: LocationService(),
      local: LocationLocalDataSource(),
    );
    try {
      final snap = await usecase();
      setState(() => lastSnap = snap);
    } catch (e) {
      setState(() => lastSnap = null);
    }
  }

  Future<void> _load() async {
    final loaded = await LocationLocalDataSource().load();
    setState(() => lastSnap = loaded);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Location Debug')),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ElevatedButton(
                onPressed: _save,
                child: const Text('Save My Current Location'),
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: OutlinedButton(
                onPressed: _load,
                child: const Text('Load Last Saved Location'),
              ),
            ),
            SizedBox(height: 24.h),
            if (lastSnap != null) ...[
              Text(
                'Lat: ${lastSnap!.lat.toStringAsFixed(5)}\n'
                    'Lng: ${lastSnap!.lng.toStringAsFixed(5)}\n'
                    'Acc: ${lastSnap!.accuracy?.toStringAsFixed(1)} m\n'
                    'At: ${lastSnap!.capturedAt}',
                style: TextStyle(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
            ] else
              Text(
                'No location saved',
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
          ],
        ),
      ),
    );
  }
}
