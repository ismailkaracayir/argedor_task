import 'dart:async';

import 'package:argedor_task/src/features/first/domain/models/char_data_model.dart';

abstract class DummyChartData {
  Stream<List<ChartData>> loadData();
}

class DummyChartDataImpl implements DummyChartData {
  final StreamController<List<ChartData>> _dataStreamController =
      StreamController<List<ChartData>>();
  @override
  Stream<List<ChartData>> loadData() async* {
    List<ChartData> data;
    data = [
      ChartData('CHN', 38, 10, 21, 29),
      ChartData('GER', 32, 12, 19, 30),
      ChartData('RUS', 37, 7, 17, 24),
      ChartData('BRZ', 34, 9, 16, 27),
      ChartData('IND', 35, 13, 18, 31),
    ];
    for (int i = 0; i < data.length; i++) {
      await Future.delayed(const Duration(milliseconds: 200));
      _dataStreamController.add(data.sublist(0, i + 1));
      yield data.sublist(0, i + 1);
    }
  }
}
