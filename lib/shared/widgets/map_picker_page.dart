import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';

class MapPickerPage extends StatefulWidget {
  final double latitude;
  final double longitude;
  final String title;

  const MapPickerPage({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.title,
  });

  @override
  State<MapPickerPage> createState() => _MapPickerPageState();
}

class _MapPickerPageState extends State<MapPickerPage> {
  late final MapController _mapController;
  double _zoom = 15;
  int _tileLayerIndex = 0;
  late LatLng _pickedPosition;
  String? _pickedAddress;

  final TextEditingController _searchCtrl = TextEditingController();
  bool _searching = false;
  List<Map<String, dynamic>> _searchResults = [];

  final List<String> _tileLayers = [
    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
    'https://tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',
    'https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}.png',
  ];

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    _pickedPosition = LatLng(widget.latitude, widget.longitude);
    _getAddressFromCoordinates(_pickedPosition);
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  /// جلب اسم العنوان من الإحداثيات
  Future<void> _getAddressFromCoordinates(LatLng position) async {
    final uri = Uri.parse(
      'https://nominatim.openstreetmap.org/reverse'
      '?lat=${position.latitude}'
      '&lon=${position.longitude}'
      '&format=json&addressdetails=1',
    );

    try {
      final res = await http.get(uri,
          headers: {'User-Agent': 'YourAppName/1.0 (youremail@example.com)'});

      if (res.statusCode == 200) {
        final data = json.decode(res.body);
        setState(() {
          _pickedAddress = data['display_name'];
        });
      }
    } catch (e) {
      debugPrint("خطأ في جلب العنوان: $e");
    }
  }

  /// البحث عن مكان بالاسم
  Future<void> _searchPlace(String query) async {
    if (query.trim().isEmpty) return;
    setState(() {
      _searching = true;
      _searchResults = [];
    });

    final uri = Uri.parse(
      'https://nominatim.openstreetmap.org/search'
      '?q=${Uri.encodeComponent(query)}'
      '&format=json&limit=5',
    );

    try {
      final res = await http.get(uri,
          headers: {'User-Agent': 'YourAppName/1.0 (youremail@example.com)'});

      if (res.statusCode == 200) {
        final List data = json.decode(res.body);
        setState(() {
          _searchResults = data.map((item) {
            return {
              'latlng': LatLng(
                double.parse(item['lat']),
                double.parse(item['lon']),
              ),
              'name': item['display_name'],
            };
          }).toList();
        });
      }
    } catch (e) {
      debugPrint("خطأ في البحث: $e");
    } finally {
      setState(() => _searching = false);
    }
  }

  /// اختيار نقطة من الخريطة أو البحث
  void _selectLocation(LatLng latlng, {String? address}) {
    setState(() {
      _pickedPosition = latlng;
      _searchResults.clear();
      _searchCtrl.clear();
    });
    if (address != null) {
      _pickedAddress = address;
    } else {
      _getAddressFromCoordinates(latlng);
    }
    _mapController.move(latlng, 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchCtrl,
          decoration: InputDecoration(
            hintText: 'ابحث عن مدينة أو شارع...',
            hintStyle: const TextStyle(color: Colors.white70),
            border: InputBorder.none,
            suffixIcon: _searching
                ? const Padding(
                    padding: EdgeInsets.all(12),
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    ),
                  )
                : IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () => _searchPlace(_searchCtrl.text),
                  ),
          ),
          style: const TextStyle(color: Colors.white),
          textInputAction: TextInputAction.search,
          onSubmitted: _searchPlace,
        ),
        backgroundColor: AppColors.primaryColor,
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
          TextButton(
            onPressed: () async {
              if (_pickedAddress == null) {
                await _getAddressFromCoordinates(_pickedPosition);
              }
              Future.microtask(() => Navigator.of(context).pop({
                    'latitude': _pickedPosition.latitude,
                    'longitude': _pickedPosition.longitude,
                    'address': _pickedAddress,
                  }));
            },
            child: const Text('تم', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _pickedPosition,
              initialZoom: _zoom,
              onTap: (_, latlng) => _selectLocation(latlng),
            ),
            children: [
              TileLayer(
                urlTemplate: _tileLayers[_tileLayerIndex],
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  // العلامة الرئيسية للموقع المحدد
                  Marker(
                    point: _pickedPosition,
                    width: 40,
                    height: 40,
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                  // علامات نتائج البحث
                  for (final item in _searchResults)
                    Marker(
                      point: item['latlng'],
                      width: 30,
                      height: 30,
                      child: IconButton(
                        icon: const Icon(Icons.place, color: Colors.blue),
                        onPressed: () => _selectLocation(
                          item['latlng'],
                          address: item['name'],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),

          // إظهار العنوان أسفل الشاشة
          if (_pickedAddress != null)
            Positioned(
              left: 10,
              right: 10,
              bottom: 80,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 4)
                  ],
                ),
                child: Text(
                  _pickedAddress!,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ),

          // أزرار الزوم
          Positioned(
            bottom: 20,
            right: 10,
            child: Column(
              children: [
                FloatingActionButton.small(
                  heroTag: 'zoom_in',
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _zoom = (_zoom + 1).clamp(1, 19);
                      _mapController.move(_pickedPosition, _zoom);
                    });
                  },
                  child:
                      const Icon(Icons.zoom_in, color: AppColors.primaryColor),
                ),
                const SizedBox(height: 8),
                FloatingActionButton.small(
                  heroTag: 'zoom_out',
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _zoom = (_zoom - 1).clamp(1, 19);
                      _mapController.move(_pickedPosition, _zoom);
                    });
                  },
                  child: const Icon(Icons.zoom_out, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
