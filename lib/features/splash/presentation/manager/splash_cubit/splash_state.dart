part of 'splash_cubit.dart';

@immutable
sealed class SplashState {
  final double ballY;
  final double width;
  final double height;
  final double bottomValue;
  final bool add;
  final bool showShadow;
  final int times;

  const SplashState({
    this.ballY = 0,
    this.width = 50,
    this.height = 50,
    this.bottomValue = 500,
    this.add = false,
    this.showShadow = false,
    this.times = 0,
  });
}

final class SplashInitial extends SplashState {
  const SplashInitial() : super();
}

final class BallAnimated extends SplashState {
  const BallAnimated({
    super.ballY,
    super.width,
    super.height,
    super.bottomValue,
    super.add,
    super.showShadow,
    super.times,
  });
}
