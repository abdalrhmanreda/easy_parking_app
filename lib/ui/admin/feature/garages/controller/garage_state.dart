part of 'garage_cubit.dart';

@immutable
abstract class GarageStates {}

class GarageInitial extends GarageStates {}

class LoadingState extends GarageStates {}

class FailureState extends GarageStates {
  final String error;

  FailureState({required this.error});
}

class GetGarageSuccessState extends GarageStates {}
