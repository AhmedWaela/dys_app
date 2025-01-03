part of 'on_boarding_cubit.dart';

@immutable
sealed class OnBoardingState {}

final class OnBoardingInitial extends OnBoardingState {}

final class IndexChanged extends OnBoardingState {
  final int currentIndex;

  IndexChanged({required this.currentIndex});
}
