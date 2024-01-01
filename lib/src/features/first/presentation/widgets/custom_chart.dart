import 'package:argedor_task/src/constants/padding_const.dart';
import 'package:argedor_task/src/shared/utils/extansions/device_size.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_dropdown_button.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_icon_button.dart';
import 'package:argedor_task/src/shared/utils/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    super.initState();
    data = [
      _ChartData('CHN', 38, 10, 21, 29),
      _ChartData('GER', 32, 12, 19, 30),
      _ChartData('RUS', 37, 7, 17, 24),
      _ChartData('BRZ', 34, 9, 16, 27),
      _ChartData('IND', 35, 13, 18, 31),
      _ChartData('CHN', 38, 10, 21, 29),
      _ChartData('GER', 32, 12, 19, 30),
      _ChartData('RUS', 37, 7, 17, 24),
      _ChartData('BRZ', 34, 9, 16, 27),
      _ChartData('IND', 35, 13, 18, 31)
    ];
    _tooltip = TooltipBehavior(enable: true);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: PaddingConstants.defaultPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: theme.colorScheme.background),
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
        Container(
          height: context.height * 0.5,
          width: context.width,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 100, interval: 10),
            tooltipBehavior: _tooltip,
            series: <CartesianSeries<_ChartData, String>>[
              CandleSeries<_ChartData, String>(
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                highValueMapper: (_ChartData data, _) => data.high,
                lowValueMapper: (_ChartData data, _) => data.low,
                openValueMapper: (_ChartData data, _) => data.open,
                closeValueMapper: (_ChartData data, _) => data.close,
              )
            ],
          ),
        ),
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
                                  fontSize: 25, color: theme.colorScheme.error),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'EUR',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  color: theme.colorScheme.error, fontSize: 15),
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
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.high, this.low, this.open, this.close);

  final String x;
  final double high;
  final double low;
  final double open;
  final double close;
}
