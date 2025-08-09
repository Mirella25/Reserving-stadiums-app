import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/constants/app_colors.dart';

class StadiumMapPage extends StatefulWidget {
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
  State<StadiumMapPage> createState() => _StadiumMapPageState();
}

class _StadiumMapPageState extends State<StadiumMapPage> {
  late final MapController _mapController;
  double _zoom = 15;
  int _tileLayerIndex = 0;

  final List<String> _tileLayers = [
    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
    'https://tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',
    'https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}.png',
  ];

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    final LatLng position = LatLng(widget.latitude, widget.longitude);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.stadiumName),
        actions: [
          IconButton(
            icon: const Icon(Icons.layers),
            tooltip: 'تبديل نوع الخريطة',
            onPressed: () {
              setState(() {
                _tileLayerIndex = (_tileLayerIndex + 1) % _tileLayers.length;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: position,
              initialZoom: _zoom,

            ),
            children: [
              TileLayer(
                urlTemplate: _tileLayers[_tileLayerIndex],
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 40,
                    height: 40,
                    point: position,
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 10,
            child: Column(
              children: [
                FloatingActionButton.small(
                  heroTag: "zoom_in",
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _zoom += 1;
                      _mapController.move(position, _zoom);
                    });
                  },
                  child: const Icon(Icons.zoom_in,color: AppColors.primaryColor,),
                ),
                const SizedBox(height: 8),
                FloatingActionButton.small(
                  backgroundColor: Colors.white,
                  heroTag: "zoom_out",
                  onPressed: () {
                    setState(() {
                      _zoom -= 1;
                      _mapController.move(position, _zoom);
                    });
                  },
                  child: const Icon(Icons.zoom_out,color: Colors.red,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
