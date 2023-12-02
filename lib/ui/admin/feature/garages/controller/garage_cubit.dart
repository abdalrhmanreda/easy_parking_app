import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/user/api/api_constant.dart';
import '../../../../../core/user/api/dio_helper.dart';

part 'garage_state.dart';

class GarageCubit extends Cubit<GarageStates> {
  GarageCubit() : super(GarageInitial());
  static GarageCubit get(context) => BlocProvider.of(context);

  void getAllGarage() {
    emit(LoadingState());
    DioHelper.getData(url: ApiConstant.getAllGarage)!.then((value) {
      emit(GetGarageSuccessState());
      print(value);
    }).catchError((error) {
      print(error.toString());
      emit(FailureState(error: error.toString()));
    });
  }
}
