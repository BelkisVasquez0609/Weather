import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Locator {
  var Lattitude;
  var Longitude;

  Future<Locator> getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    this.Lattitude = position.latitude;
    this.Longitude = position.longitude;

    return this;
  }

}