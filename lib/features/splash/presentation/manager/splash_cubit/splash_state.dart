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
    required this.ballY,
    required this.width,
    required this.height,
    required this.bottomValue,
    required this.add,
    required this.showShadow,
    required this.times,
  });
}

final class SplashInitial extends SplashState {
  const SplashInitial({
    double ballY = 0,
    double width = 50,
    double height = 50,
    double bottomValue = 500,
    bool add = false,
    bool showShadow = false,
    int times = 0,
  }) : super(
          ballY: ballY,
          width: width,
          height: height,
          bottomValue: bottomValue,
          add: add,
          showShadow: showShadow,
          times: times,
        );
}

final class BallAnimated extends SplashState {
  const BallAnimated({
    required double ballY,
    required double width,
    required double height,
    required double bottomValue,
    required bool add,
    required bool showShadow,
    required int times,
  }) : super(
          ballY: ballY,
          width: width,
          height: height,
          bottomValue: bottomValue,
          add: add,
          showShadow: showShadow,
          times: times,
        );
}

final class SplashContentDisplayed extends SplashState {
  const SplashContentDisplayed({
    required double ballY,
    required double width,
    required double height,
    required double bottomValue,
    required bool add,
    required bool showShadow,
    required int times,
  }) : super(
          ballY: ballY,
          width: width,
          height: height,
          bottomValue: bottomValue,
          add: add,
          showShadow: showShadow,
          times: times,
        );
}
