import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class StadiumMapPage extends StatelessWidget {
  final double latitude;
  final double longitude;
  final String stadiumName;

  const StadiumMapPage({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.stadiumName,
  });

  @override
  Widget build(BuildContext context) {
    final mapController = MapController();

    return Scaffold(
      appBar: AppBar(
        title: Text(stadiumName),
      ),
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: LatLng(latitude, longitude),
          initialZoom: 14,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=naSITYHrkPVKGw8Ak6ku",

            userAgentPackageName: 'com.example.stadium_booking',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(latitude, longitude),
                width: 60,
                height: 60,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 50,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "zoom_in",
            onPressed: () {
              mapController.move(
                mapController.camera.center,
                mapController.camera.zoom + 1,
              );
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "zoom_out",
            onPressed: () {
              mapController.move(
                mapController.camera.center,
                mapController.camera.zoom - 1,
              );
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
