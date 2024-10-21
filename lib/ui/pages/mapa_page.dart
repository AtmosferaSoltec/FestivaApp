import 'package:festiva_flutter/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
        options: MapOptions(
          initialCenter: AppConstants.myLocation,
          initialZoom: 13,
          minZoom: 5,
          maxZoom: 18,
          onTap: (tapPosition, point) => {
            print('Tapped on $point'),
          },
        ),
        children: [
          TileLayer(
            urlTemplate: AppConstants.urlTemplate,
            fallbackUrl: AppConstants.urlTemplate,
            additionalOptions: const {'id': AppConstants.mapBoxStyleNightId},
          )
        ]);
  }
}
