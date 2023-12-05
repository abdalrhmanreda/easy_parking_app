import 'package:geolocator/geolocator.dart';

class LocationHelper {
  static bool servicePermission = false;
  static late LocationPermission permission;

  static Future<Position> getCurrentLocation() async {
    try {
      servicePermission = await Geolocator.isLocationServiceEnabled();
      if (!servicePermission) {
        print('Service Disabled');
      }
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      Geolocator.getCurrentPosition().then((value) {
        print(value.latitude);
        print(value.longitude);
      });
    } catch (error) {}
    return await Geolocator.getCurrentPosition();
  }
}
