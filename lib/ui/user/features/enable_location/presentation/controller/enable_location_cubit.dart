import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';

part 'enable_location_state.dart';

class EnableLocationCubit extends Cubit<EnableLocationState> {
  EnableLocationCubit() : super(EnableLocationInitial());

  static EnableLocationCubit get(context) => BlocProvider.of(context);
  bool servicePermission = false;
  late LocationPermission permission;
  double latitude = 0;
  double longitude = 0;
  Future<Position> getCurrentLocation() async {
    emit(LoadingState());
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
        latitude = value.latitude;
        longitude = value.longitude;
        print(value.latitude);
        print(value.longitude);
      });
      emit(GetCurrentLocationSuccessState());
    } catch (error) {
      emit(FailureState());
    }
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
