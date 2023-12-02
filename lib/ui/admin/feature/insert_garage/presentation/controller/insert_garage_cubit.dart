import 'dart:io';

import 'package:easy_parking_app/core/user/api/api_constant.dart';
import 'package:easy_parking_app/core/user/api/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import '../../../../../../core/admin/constant/constants.dart';
import '../../../../../../generated/l10n.dart';
import '../../models/feature_model.dart';

part 'insert_garage_state.dart';

class InsertGarageCubit extends Cubit<InsertGarageStates> {
  InsertGarageCubit() : super(InsertGarageInitial());
  static InsertGarageCubit get(context) => BlocProvider.of(context);
  int selectedValue = 1;

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

  File? garageImage;
  final picker = ImagePicker();

  Future<void> pickGarageImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      garageImage = File(pickedFile.path);
      emit(PickGarageImageSuccessState());
    } else {
      print('No Image Selected');
      emit(FailureState(error: 'No Image Selected'));
    }
  }

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

  void updateFeatureValue(int index, bool newValue, context) {
    List<FeatureModel> updatedFeatures = List.from(features(context));
    updatedFeatures[index] = FeatureModel(
      title: updatedFeatures[index].title,
      value: newValue,
    );
    emit(UpdatedFeaturesState(updatedFeatures));
  }

  void addGarage({
    required String garageName,
    required String location,
    required int numFloor,
    required int numOfSpace,
    required String lat,
    required String lon,
    required String description,
    required String price,
  }) {
    emit(LoadingState());
    DioHelper.postData(url: ApiConstant.getAllGarage, data: {
      'name': garageName,
      'numFloors': numFloor,
      'lat': lat,
      'rate': 1,
      'longt': lon,
      'location': location,
      'desc': description,
      'price': price,
      'numSpaces': numOfSpace,
      "id": 10,
    }).then((value) {
      emit(AddGarageSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(FailureState(error: error.toString()));
    });
  }
}
