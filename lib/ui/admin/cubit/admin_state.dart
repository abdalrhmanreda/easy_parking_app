part of 'admin_cubit.dart';

@immutable
abstract class AdminStates {}

class AdminInitial extends AdminStates {}

class ChangeBottomNavBarState extends AdminStates {}

class LoadingState extends AdminStates {}

class FailureState extends AdminStates {
  final String error;

  FailureState({required this.error});
}

class GetGaragePhotoSuccessState extends AdminStates {}

class ChangeValueState extends AdminStates {}
