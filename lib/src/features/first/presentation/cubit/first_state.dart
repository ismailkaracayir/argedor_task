part of 'first_cubit.dart';

class FirstState extends Equatable {
  final bool isFavorite;
  final List<ChartData> chartList;
  const FirstState({this.isFavorite = true, required this.chartList,});
  
   FirstState.copyWith({bool? isFavorite,List<ChartData>? chartList})
      : this(isFavorite: isFavorite ?? true,chartList: chartList ?? []);

  @override
  List<Object> get props => [isFavorite];
}
