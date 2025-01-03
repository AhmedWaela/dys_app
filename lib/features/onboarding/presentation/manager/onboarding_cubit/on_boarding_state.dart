part of 'on_boarding_cubit.dart';

@immutable
sealed class OnBoardingState {
  final int index;

  const OnBoardingState({this.index = 0});
}

final class OnBoardingInitial extends OnBoardingState {
  const OnBoardingInitial({super.index = 0});
}

final class IndexChanged extends OnBoardingState {
  const IndexChanged({required super.index});
}
