import 'package:argedor_task/injector.dart';
import 'package:argedor_task/src/features/first/domain/models/char_data_model.dart';
import 'package:argedor_task/src/features/first/domain/usecase/first_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'first_state.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit()
      : _useCase = getIt(),
        super(const FirstState(chartList: [])) {
    loadInitialData();
  }
  final FirstUseCase _useCase;

  void selectedFav() {
    emit(FirstState.copyWith(isFavorite: !state.isFavorite));
  }

  void loadInitialData() {
    var response = _useCase.loadData();
    response.listen((event) {
      emit(FirstState.copyWith(isFavorite: state.isFavorite, chartList: event));
      print('State bildirildi');
    });
  }
}
