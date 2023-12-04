import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/booking_summary/custom_white_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../generated/l10n.dart';
import 'build_text_ticket.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 50),
        decoration: BoxDecoration(
          color: const Color(AppColors.kPrimaryColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            CustomWhiteContainer(
              widget: Column(
                children: [
                  Text(
                    S.of(context).scanCode,
                    textAlign: TextAlign.center,
                  ),
                  const Gap(15),
                  QrImageView(
                    data: '1234567890',
                    version: QrVersions.auto,
                    size: AppConstant.deviceHeight(context) / 4,
                  ),
                ],
              ),
            ),
            const Gap(4),
            DottedDashedLine(
              height: 2,
              width: AppConstant.deviceWidth(context) / 1.28,
              axis: Axis.horizontal,
              dashColor: const Color(AppColors.kLightGreyColor),
            ),
            CustomWhiteContainer(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTextTicket(
                          context: context,
                          key: S.of(context).name,
                          value: 'Abdalrhman Reda'),
                      buildTextTicket(
                          context: context,
                          key: S.of(context).parkingArea,
                          value: S.of(context).parkName),
                      buildTextTicket(
                          context: context,
                          key: S.of(context).duration,
                          value: '4 ${S.of(context).hour}'),
                      buildTextTicket(
                          context: context,
                          key: S.of(context).hour,
                          value: '9:00 pm to 1:00 Am'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTextTicket(
                          context: context,
                          key: S.of(context).vechicle,
                          value: ' Honda'),
                      buildTextTicket(
                          context: context,
                          key: S.of(context).parkingSpot,
                          value: '1st / floor 1'),
                      buildTextTicket(
                          context: context,
                          key: S.of(context).date,
                          value: DateFormat.MMMd().format(DateTime.now())),
                      buildTextTicket(
                          context: context,
                          key: S.of(context).phone,
                          value: '+201098584630'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
