import 'package:argedor_task/src/features/first/data/source/dummy.dart';
import 'package:argedor_task/src/features/first/domain/models/char_data_model.dart';
import 'package:argedor_task/src/features/first/domain/repositories/first_repository.dart';

class FirstRepositoryImpl extends FirstRepository {
  final DummyChartData _service;
  FirstRepositoryImpl({required DummyChartData service}) : _service = service;
  @override
  Stream<List<ChartData>> loadData() => _service.loadData();
}
