import 'package:argedor_task/src/features/first/domain/models/char_data_model.dart';
import 'package:argedor_task/src/features/first/presentation/cubit/first_cubit.dart';
import 'package:argedor_task/src/shared/utils/extansions/device_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  late TooltipBehavior _tooltip;
  late TrackballBehavior _behavior;
  @override
  void initState() {
    super.initState();
    _behavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    _tooltip = TooltipBehavior(enable: true);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstCubit, FirstState>(
      builder: (context, state) {
        if (state.chartList.isEmpty) {
          return const CircularProgressIndicator();
        } else {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: context.width,
              height: context.height * 0.5,
              child: SfCartesianChart(
                trackballBehavior: _behavior,
                primaryYAxis: const NumericAxis(
                  majorGridLines: MajorGridLines(width: 0),
                  minimum: 0,
                  maximum: 100,
                  interval: 10,
                ),
                primaryXAxis: CategoryAxis(
                  majorGridLines: MajorGridLines(
                      width: 1, color: Colors.white.withOpacity(0.3)),
                ),
                tooltipBehavior: _tooltip,
                series: <CartesianSeries<ChartData, String>>[
                  CandleSeries<ChartData, String>(
                    animationDuration: 500,
                    bullColor: Colors.green,
                    bearColor: Colors.red,
                    enableSolidCandles: true,
                    dataSource: state.chartList,
                    xValueMapper: (ChartData data, _) => data.x,
                    highValueMapper: (ChartData data, _) => data.high,
                    lowValueMapper: (ChartData data, _) => data.low,
                    openValueMapper: (ChartData data, _) => data.open,
                    closeValueMapper: (ChartData data, _) => data.close,
                  )
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
