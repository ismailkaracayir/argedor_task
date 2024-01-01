import 'package:argedor_task/src/constants/application_const.dart';
import 'package:argedor_task/src/shared/utils/widgets/costum_icon_button.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        title: Center(
          child: Column(
            children: <Widget>[
              Text(
                ApplicationConstants.materialAppTitle,
                style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onSecondary, fontSize: 25),
              ),
              Text(
                ApplicationConstants.materialAppSubTitle,
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
              context: context),
          CustomIconButton(
              onPressed: () {},
              icon: Icons.star,
              iconColor: theme.colorScheme.onTertiary,
              context: context),
        ],
      ),
    );
  }
}
  

  //  IconButton(
  //           onPressed: () {},
  //           icon: Icon(
  //             Icons.arrow_back,
  //             color: theme.colorScheme.onSecondary,
  //           )),