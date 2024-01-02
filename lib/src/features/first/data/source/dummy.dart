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
      ChartData('USA', 33, 11, 20, 28),
      ChartData('FRA', 36, 8, 18, 25),
      ChartData('UK', 31, 13, 17, 26),
      ChartData('JPN', 39, 6, 16, 23),
      ChartData('AUS', 29, 15, 22, 30),
      ChartData('CAN', 30, 14, 20, 28),
      ChartData('ITA', 28, 16, 19, 27),
      ChartData('SPA', 31, 13, 18, 26),
      ChartData('MEX', 33, 11, 20, 29),
      ChartData('ARG', 35, 9, 16, 25),
      ChartData('SA', 37, 7, 17, 24),
      ChartData('EGY', 26, 18, 23, 28),
      ChartData('NGA', 32, 12, 21, 30),
      ChartData('KEN', 30, 14, 19, 27),
      ChartData('BRA', 35, 9, 16, 25),
      ChartData('COL', 37, 7, 17, 24),
      ChartData('VEN', 26, 18, 23, 28),
      ChartData('PER', 32, 12, 21, 30),
      ChartData('CHL', 30, 14, 19, 27),
      ChartData('ECU', 33, 11, 20, 29),
      ChartData('URU', 29, 15, 22, 30),
      ChartData('PAR', 30, 14, 20, 28),
      ChartData('BOL', 28, 16, 19, 27),
      ChartData('GUY', 31, 13, 18, 26),
      ChartData('SUR', 35, 9, 16, 25),
      ChartData('GUF', 37, 7, 17, 24),
      ChartData('ECU', 26, 18, 23, 28),
      ChartData('GUY', 32, 12, 21, 30),
      ChartData('SUR', 30, 14, 19, 27),
      ChartData('GUF', 33, 11, 20, 29),
      ChartData('BOL', 29, 15, 22, 30),
      ChartData('PAR', 30, 14, 20, 28),
      ChartData('COL', 28, 16, 19, 27),
    ];
    for (int i = 0; i < data.length; i++) {
      await Future.delayed(const Duration(milliseconds: 50));
      _dataStreamController.add(data.sublist(0, i + 1));
      yield data.sublist(0, i + 1);
    }
  }
}
