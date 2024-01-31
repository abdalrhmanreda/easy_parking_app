import 'package:easy_parking_app/ui/user/features/extending_time/models/payment_method_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meta/meta.dart';

import '../../../../../generated/l10n.dart';

part 'extend_time_state.dart';

class ExtendTimeCubit extends Cubit<ExtendTimeState> {
  ExtendTimeCubit() : super(ExtendTimeInitial());
  static ExtendTimeCubit get(context) => BlocProvider.of(context);
  List<PaymentMethodModel> paymentMethods(context) => [
        PaymentMethodModel(
          text: S.of(context).mobileWallet,
          icon: Logo(Logos.google_wallet),
          value: 1,
        ),
        PaymentMethodModel(
          text: S.of(context).visaCard,
          icon: Logo(Logos.cc_visa),
          value: 2,
        ),
        PaymentMethodModel(
          text: S.of(context).payPal,
          icon: Logo(Logos.paypal),
          value: 3,
        ),
      ];
}
