import 'package:argedor_task/src/constants/padding_const.dart';
import 'package:argedor_task/src/features/first/presentation/widgets/chart_widget.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_double_text.dart';
import 'package:argedor_task/src/shared/utils/extansions/device_size.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_dropdown_button.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_icon_button.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TabBarViewTrend extends StatefulWidget {
  const TabBarViewTrend({super.key});

  @override
  State<TabBarViewTrend> createState() => _TabBarViewTrendState();
}

class _TabBarViewTrendState extends State<TabBarViewTrend> {
  @override
  void initState() {
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: PaddingConstants.defaultPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: theme.colorScheme.background),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                          onPressed: () {},
                          icon: Icons.bar_chart_rounded,
                          iconSize: 20,
                          context: context),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.white,
                      ),
                      CustomIconButton(
                          onPressed: () {},
                          icon: Icons.show_chart,
                          iconSize: 20,
                          context: context),
                    ],
                  ),
                ),
                CustomDropdownButton.withDefaultValue(
                  // static dropdown
                  items: const ['1m', '2m', '3m'],
                  defaultValue: '1m',
                  displayItem: (item) => item,
                  textColor: theme.colorScheme.onPrimary,
                ),
                CustomTextButton(
                    onPressed: () {},
                    text: Text(
                      '1H',
                      style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.background,
                          fontWeight: FontWeight.bold),
                    ),
                    context: context),
                CustomTextButton(
                    onPressed: () {},
                    text: Text(
                      '1D',
                      style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.background,
                          fontWeight: FontWeight.bold),
                    ),
                    context: context),
                CustomTextButton(
                    onPressed: () {},
                    text: Text(
                      '1W',
                      style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.background,
                          fontWeight: FontWeight.bold),
                    ),
                    context: context),
              ],
            ),
          ),
         ChartWidget(),
          Divider(
            height: 1,
            thickness: 3,
            color: theme.colorScheme.shadow.withOpacity(0.5),
          ),
          Padding(
            padding: PaddingConstants.defaultPadding,
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '5,350.26',
                                style: theme.textTheme.titleLarge!.copyWith(
                                    fontSize: 25,
                                    color: theme.colorScheme.error),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'EUR',
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    color: theme.colorScheme.error,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '=6,111.34',
                                style: theme.textTheme.titleLarge!.copyWith(
                                    fontSize: 15,
                                    color: theme.colorScheme.background
                                        .withOpacity(0.5)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'USD',
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    color: theme.colorScheme.background
                                        .withOpacity(0.5)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '-5.27%',
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(color: theme.colorScheme.error),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: PaddingConstants.defaultPadding,
                        alignment: Alignment.center,
                        //  padding: PaddingConstants.defaultPadding,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.background.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CustomDropdownButton.withDefaultValue(
                          // static dropDown
                          items: const [
                            'Global Avarange',
                          ],
                          defaultValue: 'Global Avarange',
                          displayItem: (item) => item,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDoubleText(
                          firstText: Text('24H High (EUR)',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  fontSize: 12,
                                  color: theme.colorScheme.background
                                      .withOpacity(0.5))),
                          secondText: Text('5.678,23',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  color: theme.colorScheme.background,
                                  fontSize: 15))),
                      CustomDoubleText(
                          firstText: Text('24H low (EUR)',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  fontSize: 12,
                                  color: theme.colorScheme.background
                                      .withOpacity(0.5))),
                          secondText: Text('5.278,23',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  color: theme.colorScheme.background,
                                  fontSize: 15))),
                      CustomDoubleText(
                          firstText: Text('24H Vol',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  fontSize: 12,
                                  color: theme.colorScheme.background
                                      .withOpacity(0.5))),
                          secondText: Text('415,678,23',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  color: theme.colorScheme.background,
                                  fontSize: 15))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomDoubleText(
                          firstText: Text('24H High (EUR)',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  fontSize: 12,
                                  color: theme.colorScheme.background
                                      .withOpacity(0.5))),
                          secondText: Text('5.678,23',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  color: theme.colorScheme.background,
                                  fontSize: 15))),
                      SizedBox(
                        width: context.width * 0.13,
                      ),
                      CustomDoubleText(
                          firstText: Text('24H low (EUR)',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  fontSize: 12,
                                  color: theme.colorScheme.background
                                      .withOpacity(0.5))),
                          secondText: Text('5.278,23',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  color: theme.colorScheme.background,
                                  fontSize: 15))),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

