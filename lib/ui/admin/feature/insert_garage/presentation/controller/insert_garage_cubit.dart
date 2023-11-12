import 'package:easy_parking_app/core/user/api/api_constant.dart';
import 'package:easy_parking_app/core/user/api/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import '../../../../../../core/admin/constant/constants.dart';
import '../../../../../../generated/l10n.dart';
import '../../models/feature_model.dart';

part 'insert_garage_state.dart';

class InsertGarageCubit extends Cubit<InsertGarageStates> {
  InsertGarageCubit() : super(InsertGarageInitial());
  static InsertGarageCubit get(context) => BlocProvider.of(context);
  List<FeatureModel> features(context) => [
        FeatureModel(
            title: '${AdminConstant.garage}${S.of(context).support}',
            value: false),
        FeatureModel(
            title: '${AdminConstant.garage}${S.of(context).washingCar}',
            value: false),
        FeatureModel(
            title: '${AdminConstant.garage}${S.of(context).securityCamara}',
            value: false),
        FeatureModel(
            title: '${AdminConstant.garage}${S.of(context).emergencyExit}',
            value: false),
        FeatureModel(
            title: '${AdminConstant.garage}${S.of(context).carLifts}',
            value: false),
      ];

  List<Asset> images = <Asset>[];

  void loadAssets() {
    emit(LoadingState());
    MultiImagePicker.pickImages(
      maxImages: 300,
      enableCamera: true,
      selectedAssets: images,
      materialOptions: const MaterialOptions(
        actionBarColor: "#a8a8a8",
        actionBarTitle: "choose photo",
        allViewTitle: "All Photos",
        useDetailsView: false,
        selectCircleStrokeColor: "#000000",
      ),
    ).then((value) {
      images = value;
      emit(GetPhotoForGarageSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState(error: error.toString()));
    });
  }

  void getGarage() {
    DioHelper.getData(url: ApiConstant.apiUrl)!.then((value) {
      print(value.data);
    }).catchError((error) {
      print(error.toString());
    });
  }
}
