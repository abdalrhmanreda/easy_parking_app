part of 'enable_location_cubit.dart';

@immutable
abstract class EnableLocationState {}

class EnableLocationInitial extends EnableLocationState {}

class LoadingState extends EnableLocationState {}

class FailureState extends EnableLocationState {}

class GetCurrentLocationSuccessState extends EnableLocationState {}
