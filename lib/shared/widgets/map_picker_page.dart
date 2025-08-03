import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;

class MapPickerPage extends StatefulWidget {
  @override
  _MapPickerPageState createState() => _MapPickerPageState();
}

class _MapPickerPageState extends State<MapPickerPage> {
  final MapController _mapController = MapController();
  LatLng _center = LatLng(33.5138, 36.2765); // دمشق
  LatLng? _picked;
  final _searchCtrl = TextEditingController();

  // حدود سوريا تقريبية
  final bounds = LatLngBounds(
    LatLng(32.0, 35.0),
    LatLng(37.5, 42.5),
  );

  /// تنفّذ بحث باسم المكان في سوريا
  Future<void> _searchPlace(String query) async {
    final url =
        'https://nominatim.openstreetmap.org/search?format=json&q=${Uri.encodeQueryComponent(query + ", Syria")}';
    final res = await http.get(Uri.parse(url), headers: {
      'User-Agent': 'your_app_name' // مطلوب من Nominatim
    });
    final List data = json.decode(res.body);
    if (data.isNotEmpty) {
      final lat = double.parse(data[0]['lat']);
      final lon = double.parse(data[0]['lon']);
      final pt = LatLng(lat, lon);
      // تأكد ضمن الحدود ثم حرّك الخريطة
      if (bounds.contains(pt)) {
        _mapController.move(pt, 12.0);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('الموقع خارج سوريا')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ابحث أو اختر موقعاً'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchCtrl,
                    decoration: InputDecoration(
                      hintText: 'ادخل اسم المدينة أو المنطقة',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    final query = _searchCtrl.text.trim();
                    if (query.isNotEmpty) {
                      _searchPlace(query);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('يرجى إدخال اسم المدينة')),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                initialCenter: _center,
                initialZoom: 8.0,
                onTap: (_, pt) {
                  if (bounds.contains(pt)) {
                    setState(() => _picked = pt);
                  }
                },
                // تقييد يدوي عبر إعادة ضبط عند نهاية الحركة
                onPositionChanged: (pos, _) {
                  final lat =
                      pos.center.latitude.clamp(bounds.south, bounds.north);
                  final lon =
                      pos.center.longitude.clamp(bounds.west, bounds.east);
                  if (lat != pos.center.latitude ||
                      lon != pos.center.longitude) {
                    _mapController.move(LatLng(lat, lon), pos.zoom);
                  }
                },
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png',
                  subdomains: ['a', 'b', 'c', 'd'],
                  retinaMode: RetinaMode.isHighDensity(context),
                ),
                if (_picked != null)
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 80,
                        height: 80,
                        point: _picked!,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.check),
        label: Text('حفظ'),
        onPressed:
            _picked == null ? null : () => Navigator.pop(context, _picked),
      ),
    );
  }
}
