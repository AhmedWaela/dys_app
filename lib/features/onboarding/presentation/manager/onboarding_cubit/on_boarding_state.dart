part of 'on_boarding_cubit.dart';

@immutable
sealed class OnBoardingState {
  PageController pageController = PageController();
}

final class OnBoardingInitial extends OnBoardingState {}

final class IndexChanged extends OnBoardingState {
  final int currentIndex;

  IndexChanged({required this.currentIndex});
}
