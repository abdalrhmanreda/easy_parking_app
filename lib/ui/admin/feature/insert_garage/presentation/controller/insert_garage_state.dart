part of 'insert_garage_cubit.dart';

@immutable
abstract class InsertGarageStates {}

class InsertGarageInitial extends InsertGarageStates {}

class LoadingState extends InsertGarageStates {}

class FailureState extends InsertGarageStates {
  final String error;

  FailureState({required this.error});
}

class GetPhotoForGarageSuccessState extends InsertGarageStates {}
