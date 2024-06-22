import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodui/assets/colors.dart';
import 'package:foodui/presentation/home/map/model/map_lat_long.dart';

import 'package:foodui/presentation/home/map/service/map_service.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class YandexMapWitget extends StatefulWidget {
  const YandexMapWitget({super.key});

  @override
  State<YandexMapWitget> createState() => _YandexMapWitgetState();
}

class _YandexMapWitgetState extends State<YandexMapWitget> {
  final mapControllerCompleter = Completer<YandexMapController>();
  @override
  void initState() {
    super.initState();
    _initPermission().ignore();
  }

  Future<void> _initPermission() async {
    if (!await LocationService().checkPermission()) {
      await LocationService().requestPermission();
    }
    await _fetchCurrentLocation();
  }

  Future<void> _fetchCurrentLocation() async {
    AppLatLong location;

    const defLocation = MoscowLocation();

    try {
      location = await LocationService().getCurrentLocation();
    } catch (_) {
      location = defLocation;
    }
    _moveToCurrentLocation(location);
  }

  Future<void> _moveToCurrentLocation(
    AppLatLong appLatLong,
  ) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: appLatLong.lat,
            longitude: appLatLong.long,
          ),
          zoom: 12,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        YandexMap(
          onMapCreated: (controller) {
            mapControllerCompleter.complete(controller);
          },
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Icon(
              Icons.location_on_rounded,
              color: primaryColor,
              size: 42,
            ))
      ],
    );
    //   floatingActionButton:
    //   FloatingActionButton(
    //     onPressed: () {
    //       _fetchCurrentLocation();
    //     },
    //     backgroundColor: Colors.white,
    //     child: Icon(Icons.my_location_outlined),
    //   );
    // }
  }
}
