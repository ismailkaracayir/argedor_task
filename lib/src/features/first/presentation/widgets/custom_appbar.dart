import 'package:argedor_task/src/constants/application_const.dart';
import 'package:argedor_task/src/features/first/presentation/cubit/first_cubit.dart';
import 'package:argedor_task/src/features/first/presentation/widgets/custom_tabbar.dart';
import 'package:argedor_task/src/localization/locale_keys.g.dart';
import 'package:argedor_task/src/shared/utils/extansions/device_size.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_icon_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabController;

  const CustomAppBar({super.key, required this.tabController});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(120.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
        backgroundColor: theme.colorScheme.primary,
        title: Center(
          child: Column(
            children: <Widget>[
              Text(
                ApplicationConstants.materialAppTitle,
                style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onSecondary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                LocaleKeys.firstScreen_global_avarege.tr(),
                style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onSecondary.withOpacity(0.5),
                    fontSize: 15),
              )
            ],
          ),
        ),
        leading: CustomIconButton(
            onPressed: () {}, icon: Icons.arrow_back, context: context),
        actions: <Widget>[
          CustomIconButton(
              onPressed: () {},
              icon: Icons.notification_add_outlined,
              iconSize: 25.0,
              context: context),
          SizedBox(
            width: context.width * 0.01,
          ),
          BlocBuilder<FirstCubit, FirstState>(
            builder: (context, state) {
              return CustomIconButton(
                  onPressed: () {
                    context.read<FirstCubit>().selectedFav();
                  },
                  icon: Icons.star,
                  iconSize: 25.0,
                  iconColor: state.isFavorite
                      ? theme.colorScheme.onTertiary
                      : theme.colorScheme.onSecondary,
                  context: context);
            },
          )
        ],
        bottom: CustomTabbar(tabController: widget.tabController));
  }
}
