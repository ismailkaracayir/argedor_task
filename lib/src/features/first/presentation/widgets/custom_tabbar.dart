import 'package:argedor_task/src/constants/application_const.dart';
import 'package:argedor_task/src/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomTabbar extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabController;
  const CustomTabbar({super.key, required this.tabController});

  @override
  State<CustomTabbar> createState() => _CustomTabbarState();

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}

class _CustomTabbarState extends State<CustomTabbar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TabBar(
      labelStyle: theme.textTheme.labelLarge,
      indicatorWeight: 4,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: theme.colorScheme.shadow.withOpacity(0.5),
      dividerHeight: 4,
      unselectedLabelColor: theme.colorScheme.background,
      labelColor: theme.colorScheme.onPrimary,
      indicatorColor: theme.colorScheme.onPrimary,
      controller: widget.tabController,
      tabs: <Widget>[
        Tab(
          text: LocaleKeys.firstScreen_trend.tr(),
        ),
        Tab(
          text: LocaleKeys.firstScreen_technicals.tr(),
        ),
        Tab(
          text: LocaleKeys.firstScreen_transaction.tr(),
        ),
      ],
    );
  }
}
