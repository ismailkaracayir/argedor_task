import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'first_state.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit() : super(const FirstState());

  void selectedFav() {
    emit(FirstState.copyWith(isFavorite: !state.isFavorite));
  }


}