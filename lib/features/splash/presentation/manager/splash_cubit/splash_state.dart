part of 'splash_cubit.dart';

@immutable
sealed class SplashState {}

final class SplashInitial extends SplashState {}

final class BallAnimated extends SplashState {}

final class SplashContentDisplayed extends SplashState {}
