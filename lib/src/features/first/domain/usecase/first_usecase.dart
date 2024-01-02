import 'package:argedor_task/src/features/first/domain/models/char_data_model.dart';
import 'package:argedor_task/src/features/first/domain/repositories/first_repository.dart';

class FirstUseCase {
  final FirstRepository _repository;
  FirstUseCase({required FirstRepository repository})
      : _repository = repository,
        super();

  Stream<List<ChartData>> loadData() => _repository.loadData();
}
