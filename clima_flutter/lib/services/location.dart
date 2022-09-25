import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude = 0;
  double _longitude = 0;

  double get latitude => _latitude;
  double get longitude => _longitude;

  Future<void> getLocation() async {
    try {
      Position pos = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      _latitude = pos.latitude;
      _longitude = pos.longitude;
    } catch (e) {
      print(e);
    }
  }
}
