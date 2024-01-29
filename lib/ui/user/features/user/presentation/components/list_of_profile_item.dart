import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../generated/l10n.dart';
import '../model/profile_item.dart';
import 'language_dialog.dart';

List<ProfileItem> items(context) => [
      ProfileItem(
        icon: IconlyBroken.setting,
        title: S.of(context).profileSettings,
        onTap: () {},
      ),
      ProfileItem(
        icon: IconlyBroken.wallet,
        title: S.of(context).profilePayment,
        onTap: () {},
      ),
      ProfileItem(
        icon: IconlyBroken.notification,
        title: S.of(context).profileNotification,
        onTap: () {
          CustomNavigation.navigateByNamedTo(context, RoutePath.notification);
        },
      ),
      ProfileItem(
        icon: Icons.translate_outlined,
        title: S.of(context).profileLanguage,
        onTap: () {
          showLanguageDialog(context);
        },
      ),
      ProfileItem(
        icon: Icons.help_outline_sharp,
        title: S.of(context).profileCenterHelp,
        onTap: () {
          CustomNavigation.navigateByNamedTo(context, RoutePath.helpCenter);
        },
      ),
      ProfileItem(
        icon: IconlyBroken.logout,
        title: S.of(context).profileLogout,
        onTap: () {},
      ),
    ];
