import 'package:easy_parking_app/core/admin/constant/constants.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/models/feature_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

part 'admin_state.dart';

class AdminCubit extends Cubit<AdminStates> {
  AdminCubit() : super(AdminInitial());

  static AdminCubit get(context) => BlocProvider.of(context);
  List<FeatureModel> features = [
    FeatureModel(title: '${AdminConstant.garage}24/7 support', value: false),
    FeatureModel(title: '${AdminConstant.garage}washing car ', value: false),
    FeatureModel(
        title: '${AdminConstant.garage}security cameras', value: false),
    FeatureModel(title: '${AdminConstant.garage}emergency exit', value: false),
    FeatureModel(title: '${AdminConstant.garage}car lifts', value: false),
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
      emit(GetGaragePhotoSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState(error: error.toString()));
    });
  }

  void changeValue(bool value) {
    value != value;
    emit(ChangeValueState());
  }
}
