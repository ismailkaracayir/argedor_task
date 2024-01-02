


import 'package:argedor_task/src/features/first/domain/models/char_data_model.dart';

abstract class FirstRepository {
  Stream<List<ChartData>> loadData();
}