part of 'first_cubit.dart';

class FirstState extends Equatable {
  final bool isFavorite;
  const FirstState({this.isFavorite = true});
    const FirstState.copyWith({bool? isFavorite}) : this(isFavorite: isFavorite ??  true );


  @override
  List<Object> get props => [isFavorite];
}