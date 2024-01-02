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
  @override
  void initState() {
    super.initState();

    _tooltip = TooltipBehavior(enable: true);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstCubit, FirstState>(
      builder: (context, state) {
        return Container(
          height: context.height * 0.5,
          width: context.width,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 100, interval: 10),
            tooltipBehavior: _tooltip,
            series: <CartesianSeries<ChartData, String>>[
              CandleSeries<ChartData, String>(
                dataSource: state.chartList,
                xValueMapper: (ChartData data, _) => data.x,
                highValueMapper: (ChartData data, _) => data.high,
                lowValueMapper: (ChartData data, _) => data.low,
                openValueMapper: (ChartData data, _) => data.open,
                closeValueMapper: (ChartData data, _) => data.close,
              )
            ],
          ),
        );
      },
    );
  }
}
