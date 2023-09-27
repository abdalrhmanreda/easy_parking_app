import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());
  static AppCubit get(context) => BlocProvider.of(context);
}
